<footer class="bg-dark py-4 mt-auto">
	<div class="container px-5">
		<div class="row align-items-center justify-content-between flex-column flex-sm-row">
			<div class="col-auto"><div class="small m-0 text-white">Copyright &copy; 2024</div></div>
			<div class="col-auto">
				@foreach ($footermenu as $item)			
					<a class="link-light small" href="{{ $item['url']}}">{{ $item['e.title'] }}</a>				
					<span class="text-white mx-1">&middot;</span>
				@endforeach
			</div>
		</div>
	</div>
</footer>