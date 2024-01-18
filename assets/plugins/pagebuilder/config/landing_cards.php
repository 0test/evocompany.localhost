<?
return [
    'title' => 'Карточки',
    'container' => 'landing',
    'image' => 'assets/plugins/pagebuilder/images/gallery.jpg',
    'fields' => [
        'slides' => [
            'type' => 'group',
            'caption' => 'Карточки',
            'fields' => [
                'image' => [
                    'caption' => 'Изображение',
                    'type' => 'image'
                ],
                'title' => [
                    'caption' => 'Заголовок',
                    'type' => 'text'
                ],
                'content' => [
                    'caption' => 'Текст',
                    'type'  => 'textarea',
                ],
            ]
        ]
    ],
];
