<?php namespace EvolutionCMS\UserManager\Services\Users;

use EvolutionCMS\Exceptions\ServiceActionException;
use EvolutionCMS\Exceptions\ServiceValidationException;
use EvolutionCMS\UserManager\Interfaces\UserServiceInterface;
use \EvolutionCMS\Models\User;
use Illuminate\Support\Facades\Lang;

class UserDelete implements UserServiceInterface
{
    /**
     * @var \string[][]
     */
    public $validate;

    /**
     * @var array
     */
    public $messages;

    /**
     * @var array
     */
    public $userData;

    /**
     * @var bool
     */
    public $events;

    /**
     * @var bool
     */
    public $cache;

    /**
     * @var array $validateErrors
     */
    public $validateErrors;

    /**
     * UserRegistration constructor.
     * @param array $userData
     * @param bool $events
     * @param bool $cache
     */
    public function __construct(array $userData, bool $events = true, bool $cache = true)
    {
        $this->validate = $this->getValidationRules();
        $this->messages = $this->getValidationMessages();
        $this->userData = $userData;
        $this->events = $events;
        $this->cache = $cache;
    }

    /**
     * @return \string[][]
     */
    public function getValidationRules(): array
    {
        return [
            'id' => ['required','exists:users'],
        ];
    }

    /**
     * @return array
     */
    public function getValidationMessages(): array
    {
        return [
            'id.required' => Lang::get("global.error_no_id"),
            'id.exists' => Lang::get("global.user_doesnt_exist"),
        ];
    }

    /**
     * @return string
     * @throws ServiceActionException
     * @throws ServiceValidationException
     */
    public function process(): string
    {
        if (!$this->checkRules()) {
            throw new ServiceActionException(\Lang::get('global.error_no_privileges'));
        }

        if (!$this->validate()) {
            $exception = new ServiceValidationException();
            $exception->setValidationErrors($this->validateErrors);
            throw $exception;
        }

        if ($this->events) {
            // invoke OnBeforeWUsrFormDelete event
            EvolutionCMS()->invokeEvent("OnBeforeUserDelete",
                array(
                    "id"	=> $this->userData['id']
                ));
        }

        $username = \EvolutionCMS\Models\User::findOrFail($this->userData['id'])->username;

        // delete the user.
        \EvolutionCMS\Models\User::destroy($this->userData['id']);
        \EvolutionCMS\Models\UserValue::query()->where('userid', $this->userData['id'])->delete();
        if ($this->events) {
            // invoke OnWebDeleteUser event
            EvolutionCMS()->invokeEvent("OnUserDelete",
                array(
                    "userid"		=> $this->userData['id'],
                    "username"		=> $username
                ));
        }

        if ($this->cache) {
            EvolutionCMS()->clearCache('full');
        }

        return $username;
    }

    /**
     * @return bool
     */
    public function checkRules(): bool
    {
        return EvolutionCMS()->hasPermission('delete_user');
    }

    /**
     * @return bool
     */
    public function validate(): bool
    {
        $validator = \Validator::make($this->userData, $this->validate, $this->messages);
        $this->validateErrors = $validator->errors()->toArray();
        return !$validator->fails();
    }

}
