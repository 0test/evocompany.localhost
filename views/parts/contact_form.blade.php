<form class="needs-validation" method="POST">
    {!! $data['form.messages'] !!}
    <input type="hidden" name="formid" value="basic">
    <div class="form-group mb-3 mt-3">
        <input class="{{ $data['name.classname'] ?? '' }} form-control form-control-sm" type="text" name="name" id="name" value="{{ $data['name.value'] ?? ''}}">
        <label class="form-label mt-1 text-shadow" for="name">Ваше имя</label>
        <div class="invalid-feedback">{{ $data['name.error'] ?? ''}}</div>
    </div>
    <div class="form-group mb-3 mt-3">
        <input class="{{ $data['phone.classname'] ?? ''}} form-control form-control-sm" type="text" name="phone" id="phone" value="{{ $data['phone.value'] ?? ''}}">
        <label class="form-label mt-1 text-shadow" for="phone">Ваш телефон</label>
        <div class="invalid-feedback">{{ $data['phone.error'] ?? ''}}</div>
    </div>
    <div class="form-group mb-3 mt-3">
        <textarea class="{{ $data['comment.classname'] ?? '' }} form-control form-control-sm" name="comment" id="comment">{{ $data['comment.value'] ?? ''}}</textarea>
        <label class="form-label mt-1 text-shadow" for="comment">Что бы вы хотели
            узнать?</label>
        <div class="invalid-feedback">{{ $data['comment.error'] ?? ''}}</div>
    </div>

    <div class="form-group  {{ $data['g-recaptcha-response.classname'] ?? '' }}">
            {!! $data['captcha'] ?? '' !!}
            {!! $data['g-recaptcha-response.error'] ?? '' !!}
        </div>
    <div class="form-group field"><input class="btn btn-primary" type="submit" value="Отправить" /></div>
</form>

