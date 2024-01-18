@extends('layouts.app')
@section('content')
    @if(!empty($pagebuilder))
        @foreach($pagebuilder as $item)
            @if(View::exists('landing.'.$item['config']))
                @include('landing.'.$item['config'],$item)
            @endif
        @endforeach
    @endif
@endsection