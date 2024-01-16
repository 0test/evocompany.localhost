@extends('layouts.app')
@section('content')
<section class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-12 col-lg-6 mb-4">
                <div class="card mb-4">
                    <div class="card-header py-3">
                        <h5 class="mb-0">Хотите что-то нам написать?</h5>
                    </div>
                    <div class="card-body">
                        <form class="needs-validation">
                            <div class="form-group mb-3 mt-3">
                                <input class="form-control form-control-sm" type="text" name="name" id="name" />
                                <label class="form-label mt-1 text-shadow" for="name">Ваше имя</label>
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="form-group mb-3 mt-3">
                                <input class="form-control form-control-sm" type="text" name="phone" id="phone" />
                                <label class="form-label mt-1 text-shadow" for="phone">Ваше имя</label>
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="form-group mb-3 mt-3">
                                <textarea class="form-control form-control-sm" name="phone" id="comment"></textarea>
                                <label class="form-label mt-1 text-shadow" for="comment">Что бы вы хотели
                                    узнать?</label>
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="form-group field"><input class="btn btn-primary" type="submit"
                                    value="Отправить" /></div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-6 mb-4">
                <div class="card mb-4">
                    <div class="card-header py-3">
                        <h5 class="mb-0">Адреса и телефоны</h5>
                    </div>
                    <div class="card-body">
                        <ul class="list-group list-group-flush">
                            <li
                                class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
                                {{ $documentObject['contacts_address'] }}
                            </li>                           
                            <li
                                class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
                            </li>
                             {!! $documentObject['contacts_mapcode'] !!}
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
              {!! $documentObject['content'] !!}
            </div>
        </div>
    </div>
</section>
@endsection