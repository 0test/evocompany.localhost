@extends('layouts.app')
@section('content')
<section class="py-5">
	<div class="container px-5 my-5">
		<div class="text-center mb-5">
			<h1 class="fw-bolder">Наши работы</h1>
			<p class="lead fw-normal text-muted mb-0">Лучшие работы компании "Компания"</p>
		</div>
		<div class="row gx-5">
			@foreach ($our_works as $one_work)
				<div class="col-lg-6">
					<div class="position-relative mb-5">
						<img class="img-fluid rounded-3 mb-3" src="{{ $one_work['portfolio_mainphoto'] }}" />
						<a class="h3 fw-bolder text-decoration-none link-dark stretched-link" href="{{ urlProcessor::makeUrl($one_work['id'] ) }}">{{ $one_work['pagetitle'] }}</a>
					</div>
				</div>
			@endforeach
		</div>
	</div>
</section>
@endsection