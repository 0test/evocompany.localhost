<?php
$settings['display'] = 'vertical';
$settings['fields'] = [
    'image' => [
        'caption' => 'Фоновое фото',
        'type' => 'image',
    ],
    'thumb' => [
        'caption' => 'Thumbnail',
        'type' => 'thumb',
        'thumbof' => 'image'
    ],
    'title' => [
        'caption' => 'Заголовок',
        'type' => 'text'
    ]
];
$settings['configuration'] = [
    'enablePaste' => false,
    'hideHeader' => true,
    'enableClear' => false,
];
