<div class="col mb-5">
    <div class="card h-100">
        <img class="card-img-top" src="{{ evo()->runSnippet('phpthumb',[ 
'input' => $product['item_photo'],
'options' => 'w=450,h=300,far=C'
])
}}" />
        <div class="card-body p-4">
            <div class="text-center">
                <h5 class="fw-bolder">{{$product['pagetitle']}}</h5>

                <div class="price text-muted">{{ $product['item_price'] }} руб</div>
            </div>
        </div>
        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
            <div class="text-center"><a class="stretched-link btn btn-outline-dark mt-auto"
                    href="{{ urlProcessor::makeUrl($product['id'] ) }}">Подробнее</a></div>
        </div>
    </div>
</div>