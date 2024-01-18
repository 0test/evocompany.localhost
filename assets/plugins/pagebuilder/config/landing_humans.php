<?
return [
    'title' => 'Люди',
    'container' => 'landing',
    'image' => 'assets/plugins/pagebuilder/images/text-photo.jpg',
    'fields' => [
        'humans' => [
            'type' => 'group',
            'caption' => 'Люди',
            'fields' => [
                'image' => [
                    'caption' => 'Фото',
                    'type' => 'image'
                ],
                'title' => [
                    'caption' => 'Имя Фамилия',
                    'type' => 'text'
                ],
                'position' => [
                    'caption' => 'Должность',
                    'type' => 'text'
                ],                
            ]
        ]
    ],
];
