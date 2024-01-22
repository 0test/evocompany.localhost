<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>
        {{ $documentObject['metatitle'] ? $documentObject['metatitle'] :
        $documentObject['pagetitle'] }}
    </title>
    <meta name="description"
        content="{{ $documentObject['metadescription'] ? $documentObject['metadescription']  : $documentObject['introtext'] }}" />
    <base href="{{ $modx->getConfig('site_url') }}" />
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <link href="template/css/styles.css" rel="stylesheet" />

    {!! $modx->getConfig('client_header_codes') !!}

</head>

<body class="d-flex flex-column h-100">
    <main class="flex-shrink-0">
        @include('parts.nav')
        @yield('content')
    </main>
    @include('parts.footer')
    @include('parts.footer_scripts')
</body>

</html>