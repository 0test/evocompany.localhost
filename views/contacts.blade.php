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
                        {!! $contact_form !!}
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

<script src="https://www.google.com/recaptcha/api.js"></script>
@endsection