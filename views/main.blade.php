@extends('layouts.app')
@section('content')
	<header class="bg-dark py-5">
		<div class="container px-5">
			<div class="row gx-5 align-items-center justify-content-center">
				<div class="col-lg-8 col-xl-7 col-xxl-6">
					<div class="my-5 text-center text-xl-start">
						<h1 class="display-5 fw-bolder text-white mb-2">Сайт компании на Бутстрапчике</h1>
						<p class="lead fw-normal text-white-50 mb-4">Так-то у нас нормальная компания. Всякое бывает - можем чего и прошляпить случайно, но в целом-то ого-го. И клиенты есть, и делаем разные полезняхи</p>
						<div class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-start">
							<a class="btn btn-primary btn-lg px-4 me-sm-3" href="#features">Кратко о нас</a>
							<a class="btn btn-outline-light btn-lg px-4" href="about.html">Подробнее</a>
						</div>
					</div>
				</div>
				<div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center"><img class="img-fluid rounded-3 my-5" src="https://dummyimage.com/600x400/343a40/6c757d" alt="..." /></div>
			</div>
		</div>
	</header>

	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">
			<div class="row gx-5 justify-content-center">
				<div class="col-lg-8 col-xl-6">
					<div class="text-center"><h2 class="fw-bolder mb-5">Свежие поступления</h2></div>
				</div>
			</div>
			<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
				@foreach ($products as $product)
				<div class="col mb-5">
					<div class="card h-100">
						<img class="card-img-top" src="{{$product['item_photo']}}" />
						<div class="card-body p-4">
							<div class="text-center">
								<h5 class="fw-bolder">{{$product['pagetitle']}}</h5>
								{{$product['item_price']}} руб.
							</div>
						</div>
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center"><a class="btn btn-outline-dark mt-auto" href="{{ urlProcessor::makeUrl($product['id'] ) }}">Подробнее</a></div>
						</div>
					</div>
				</div>
				@endforeach
			</div>
		</div>
	</section>	
	<section class="py-5" id="features">
		<div class="container px-5 my-5">
			<div class="row gx-5">
				<div class="col-lg-4 mb-5 mb-lg-0"><h2 class="fw-bolder mb-0">Услуги компании "Компания"</h2></div>
				<div class="col-lg-8">
					<div class="row gx-5 row-cols-1 row-cols-md-2">
						<div class="col mb-5 h-100">
							<div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-collection"></i></div>
							<h2 class="h5">Складываем коробки</h2>
							<p class="mb-0">А что я могу поделать, если иконка похожа на коробки в штабелях</p>
						</div>
						<div class="col mb-5 h-100">
							<div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-nut"></i></div>
							<h2 class="h5">Точим гайки</h2>
							<p class="mb-0">И болты точим, но болты реже.</p>
						</div>
						<div class="col mb-5 mb-md-0 h-100">
							<div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-tools"></i></div>
							<h2 class="h5">Есть инструменты</h2>
							<p class="mb-0">Отвёртка и набор ключей в принципе же инструмент?</p>
						</div>
						<div class="col h-100">
							<div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-minecart"></i></div>
							<h2 class="h5">Привезём и прикрутим</h2>
							<p class="mb-0">Гайка - она тяжёлая, а у нас мужики крепкие. Всё разберут, привезут и соберут на месте</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="py-5">
		<div class="container px-5 my-5">
			<div class="row gx-5 justify-content-center">
				<div class="col-lg-8 col-xl-6">
					<div class="text-center">
						<h2 class="fw-bolder">Последние новости</h2>
						<p class="lead fw-normal text-muted mb-5">Актуальная информация о компании, которая вам, разумеется, чрезвычайно интересна</p>
					</div>
				</div>
			</div>
			<div class="row gx-5">
				@foreach ($news as $news_one)
				<div class="col-lg-4 mb-5">
					<div class="card h-100 shadow border-0">
						<img class="card-img-top" src="{{ $news_one['news_photo'] }}" />
						<div class="card-body p-4">
							<a class="text-decoration-none link-dark stretched-link" href="{{ urlProcessor::makeUrl($news_one['id'] ) }}">
								<h5 class="card-title mb-3">
									{{ $news_one['pagetitle'] }}
								</h5>
							</a>
							<p class="card-text mb-0">{{ $news_one['introtext'] }}</p>
						</div>
						<div class="card-footer p-4 pt-0 bg-transparent border-top-0">
							<div class="d-flex align-items-end justify-content-between">
								<div class="d-flex align-items-center">
									<div class="small">
										<div class="text-muted">{{ date('d.m.Y H:i',$news_one['createdon']) }}</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				@endforeach
			</div>
		</div>
	</section>
@endsection
