<?php

namespace EvolutionCMS\Main\Controllers;

class ContactsController extends BaseController
{

    public function setData()
    {
        $this->data['contact_form'] = evolutionCMS()->runSnippet('FormLister', [
            'formid' => 'basic',
            'rules' => [
                "name" => [
                    "required" => "Обязательно введите имя",
                ],
                "phone" => [
                    "required" => "Обязательно введите номер телефона",
                ],
                "comment" => [
                    "required" => "Обязательно введите сообщение",
                    "minLength" => [
                        "params" => 10,
                        "message" => "Сообщение должно быть не менее 10 символов"
                    ]
                ]
            ],
            'formTpl' => '@B_FILE: parts.contact_form',
            'to' => 'test@test.com',
            'reportTpl' => '@CODE:
                <p>Имя: [+name.value+]</p>
                <p>Телефон: [+phone.value+]</p>
                <p>Сообщение: [+comment.value+]</p>
            ',
            'errorClass' => ' is-invalid',
            'requiredClass' => ' is-invalid',
            'subject' => 'Новое сообщение',
            'messagesOuterTpl' => '@CODE:<div class="alert alert-danger" role="alert">[+messages+]</div>',
            'errorTpl' => '@CODE: [+message+]',
            'protectSubmit' => 0,
            'submitLimit' => 0,
            'captcha' => 'reCaptcha',
            'captchaParams' => [
                "siteKey" => "6LcFo1MpAAAAAMt3DaNmACdxgI5l4-QH6mXCw_eU",
                "secretKey" => "6LcFo1MpAAAAADfd2mGCr9Ugx4jy5CWq-IKvMcjy",
                "errorCodeFailed" => "Нажмите галочку \"Я не робот\"",
                "width" => "normal"
            ],
            'captchaField' => 'g-recaptcha-response'
        ]);
    }
}
