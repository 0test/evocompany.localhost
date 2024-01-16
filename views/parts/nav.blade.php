<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container px-5">
		<a class="navbar-brand" href="/">ООО "Компания"</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				@foreach ($mainmenu as $item)
					<li class="nav-item">
						<a class="nav-link {{ isset($item['here']) || isset($item['active']) ? 'active' : ' ' }}" href="{{ $item['url']}}">{{ $item['e.title'] }}</a>
					</li>
				@endforeach
			</ul>
		</div>
	</div>
</nav>