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