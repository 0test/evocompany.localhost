<?
return [
    'title' => 'Слайдер',
    'container' => 'landing',
    'image' => 'assets/plugins/pagebuilder/images/image.jpg',
    'fields' => [
        'slides' => [
            'type' => 'group',
            'caption' => 'Слайды',
            'fields' => [
                'image' => [
                    'caption' => 'Изображение',
                    'type' => 'image'
                ],
                'title' => [
                    'caption' => 'Заголовок',
                    'type' => 'text'
                ],
            ]
        ]
    ],
];
