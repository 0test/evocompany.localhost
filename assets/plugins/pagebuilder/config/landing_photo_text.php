<?
return [
    'title' => 'Текст и фото',
    'container' => 'landing',
    'image' => 'assets/plugins/pagebuilder/images/2col-photo-text.jpg',
    'fields' => [
        'title' => [
            'caption' => 'Заголовок',
            'type' => 'text'
        ],
        'content' => [
            'caption' => 'Текст',
            'type'  => 'richtext',
            'options' => [
                'height' => '300px',
            ],
        ],
        'image' => [
            'caption' => 'Изображение',
            'type' => 'image'
        ],

    ]
];
