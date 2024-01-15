<aside class="sidebar border border-right col-md-3 col-lg-2 p-0 bg-body-tertiary py-3">
	<h3 class="h6 fs-6 p-3">Разделы каталога</h3>
	<ul class="nav flex-column">
		@foreach ($asidemenu as $item)
		<li class="nav-item">
			<a class="nav-link d-flex align-items-center {{ isset($item['here']) || isset($item['active']) ? 'active' : ' ' }}" href="{{ $item['url']}}">{{ $item['e.title'] }}</a>
		</li>
		@endforeach
	</ul>
</aside>