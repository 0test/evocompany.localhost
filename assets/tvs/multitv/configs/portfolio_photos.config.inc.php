<?php
$settings['display'] = 'vertical';
$settings['fields'] = [
    'image' => [
        'caption' => 'Фотография работы',
        'type' => 'image'
	],
    'thumb' => [
        'caption' => 'Thumbnail',
        'type' => 'thumb',
        'thumbof' => 'image'
	],
];
$settings['configuration'] = [
    'enablePaste' => false,
    'hideHeader' => true,
    'enableClear' => false,
];