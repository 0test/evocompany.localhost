@extends('layouts.app')
@section('content')
<section class="container px-5">
	<div class="row">
		@include('parts/aside_catalog')
		<div class="col-md-9 ms-sm-auto col-lg-10 py-3">
			<section>
				<div class="container px-4 px-lg-5 mt-3">
					<h1 class="pb-4">Каталог продукции</h1>
					<div class="row py-2 gx-4 gx-lg-5 row-cols-1 row-cols-md-2 row-cols-xl-3 justify-content-center">
						@foreach ($products as $product)
							@include('parts.product')
						@endforeach
					</div>
					<div class="row py-2 gx-5">
						{!! $modx->getPlaceholder('pages') !!}
					</div>
				</div>
			</section>
		</div>
	</div>
</section>
@endsection