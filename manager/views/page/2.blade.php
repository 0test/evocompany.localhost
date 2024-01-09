@extends('manager::template.page')
@section('content')
    <?php /*include_once evolutionCMS()->get('ManagerTheme')->getFileProcessor("actions/welcome.static.php");*/ ?>
    <?php
    unset($_SESSION['itemname']); // clear this, because it's only set for logging purposes

    if ($modx->hasPermission('settings') && $modx->getConfig('settings_version') !== $modx->getVersionData('version')) {
        // seems to be a new install - send the user to the configuration page
        exit('<script type="text/javascript">document.location.href="index.php?a=17";</script>');
    }

    // set placeholders
    $ph = $_lang;

    $iconTpl = $modx->getChunk('manager#welcome\WrapIcon');
    // setup icons
    if ($modx->hasPermission('new_user') || $modx->hasPermission('edit_user')) {
        $icon = '<i class="' . $_style['icon_user'] . $_style['icon_size_2x'] . $_style['icon_size_fix'] . '" alt="[%user_management_title%]"> </i>[%user_management_title%]';
        $ph['SecurityIcon'] = sprintf($iconTpl, $icon, 75);
    }
    if ($modx->hasPermission('new_user') || $modx->hasPermission('edit_user')) {
        $icon = '<i class="' . $_style['icon_web_user'] . $_style['icon_size_2x'] . $_style['icon_size_fix'] . '" alt="[%web_user_management_title%]"> </i>[%web_user_management_title%]';
        $ph['WebUserIcon'] = sprintf($iconTpl, $icon, 99);
    }
    if ($modx->hasPermission('new_module') || $modx->hasPermission('edit_module')) {
        $icon = '<i class="' . $_style['icon_modules'] . $_style['icon_size_2x'] . $_style['icon_size_fix'] . '" alt="[%manage_modules%]"> </i>[%modules%]';
        $ph['ModulesIcon'] = sprintf($iconTpl, $icon, 106);
    }
    if ($modx->hasPermission('new_template') || $modx->hasPermission('edit_template') || $modx->hasPermission('new_snippet') || $modx->hasPermission('edit_snippet') || $modx->hasPermission('new_plugin') || $modx->hasPermission('edit_plugin') || $modx->hasPermission('manage_metatags')) {
        $icon = '<i class="' . $_style['icon_elements'] . $_style['icon_size_2x'] . $_style['icon_size_fix'] . '" alt="[%element_management%]"> </i>[%elements%]';
        $ph['ResourcesIcon'] = sprintf($iconTpl, $icon, 76);
    }
    if ($modx->hasPermission('bk_manager')) {
        $icon = '<i class="' . $_style['icon_database'] . $_style['icon_size_2x'] . $_style['icon_size_fix'] . '" alt="[%bk_manager%]"> </i>[%backup%]';
        $ph['BackupIcon'] = sprintf($iconTpl, $icon, 93);
    }
    if ($modx->hasPermission('help')) {
        $icon = '<i class="' . $_style['icon_question_circle'] . $_style['icon_size_2x'] . $_style['icon_size_fix'] . '" alt="[%help%]" /> </i>[%help%]';
        $ph['HelpIcon'] = sprintf($iconTpl, $icon, 9);
    }

    if ($modx->hasPermission('new_document')) {
        $icon = '<i class="' . $_style['icon_document'] . $_style['icon_size_2x'] . $_style['icon_size_fix'] . '"></i>[%add_resource%]';
        $ph['ResourceIcon'] = sprintf($iconTpl, $icon, 4);
        $icon = '<i class="' . $_style['icon_chain'] . $_style['icon_size_2x'] . $_style['icon_size_fix'] . '"></i>[%add_weblink%]';
        $ph['WeblinkIcon'] = sprintf($iconTpl, $icon, 72);
    }
    if ($modx->hasPermission('assets_images')) {
        $icon = '<i class="' . $_style['icon_camera'] . $_style['icon_size_2x'] . $_style['icon_size_fix'] . '"></i>[%images_management%]';
        $ph['ImagesIcon'] = sprintf($iconTpl, $icon, 72);
    }
    if ($modx->hasPermission('assets_files')) {
        $icon = '<i class="' . $_style['icon_files'] . $_style['icon_size_2x'] . $_style['icon_size_fix'] . '"></i>[%files_management%]';
        $ph['FilesIcon'] = sprintf($iconTpl, $icon, 72);
    }
    if ($modx->hasPermission('change_password')) {
        $icon = '<i class="' . $_style['icon_lock'] . $_style['icon_size_2x'] . $_style['icon_size_fix'] . '"></i>[%change_password%]';
        $ph['PasswordIcon'] = sprintf($iconTpl, $icon, 28);
    }
    $icon = '<i class="' . $_style['icon_logout'] . $_style['icon_size_2x'] . $_style['icon_size_fix'] . '"></i>[%logout%]';
    $ph['LogoutIcon'] = sprintf($iconTpl, $icon, 8);

    // do some config checks
    if ($modx->getConfig('warning_visibility') || $_SESSION['mgrRole'] == 1) {
        include_once MODX_MANAGER_PATH . 'includes/config_check.inc.php';
        if ($config_check_results != $_lang['configcheck_ok']) {
            $ph['config_check_results'] = $config_check_results;
            $ph['config_display'] = 'block';
        } else {
            $ph['config_display'] = 'none';
        }
    } else {
        $ph['config_display'] = 'none';
    }

    if($modx->isSafemode()) {
        $ph['show_safe_mode'] = 'block';
        $ph['safe_mode_msg'] = __('global.safe_mode_warning');
    } else {
        $ph['show_safe_mode'] = 'none';
    }

    if (!$modx->getConfig('site_status') && $modx->hasPermission('settings')) {
        $ph['show_site_status'] = 'block';
        $ph['site_status_msg'] = strip_tags($modx->getConfig('site_unavailable_message')) . ' ' . __('global.update_settings_from_language') . ' <a href="?a=17&tab=0" target="main" class="btn btn-sm btn-success">' . __('global.online') . '</a>';
    } else {
        $ph['show_site_status'] = 'none';
    }

    // Check logout-reminder
    if (isset($_SESSION['show_logout_reminder'])) {
        switch ($_SESSION['show_logout_reminder']['type']) {
            case 'logout_reminder':
                $date = $modx->toDateFormat($_SESSION['show_logout_reminder']['lastHit'], 'dateOnly');
                $ph['logout_reminder_msg'] = str_replace('[+date+]', $date, $_lang['logout_reminder_msg']);
                break;
        }
        $ph['show_logout_reminder'] = 'block';
        unset($_SESSION['show_logout_reminder']);
    } else {
        $ph['show_logout_reminder'] = 'none';
    }

    // Check multiple sessions

    $ph['show_multiple_sessions'] = 'none';

    $ph['RecentInfo'] = $modx->getChunk('manager#welcome\RecentInfo');

    $tpl = '
    <table class="">
        <tr>
            <td width="150">[%yourinfo_username%]</td>
            <td><b>[+username+]</b></td>
        </tr>
        <tr>
            <td>[%yourinfo_role%]</td>
            <td><b>[+role+]</b></td>
        </tr>
        <tr>
            <td>[%yourinfo_previous_login%]</td>
            <td><b>[+lastlogin+]</b></td>
        </tr>
        <tr>
            <td>[%yourinfo_total_logins%]</td>
            <td><b>[+logincount+]</b></td>
        </tr>
    </table>';

    $loginCount = $_SESSION['mgrLogincount'] + 1;
    $ph['UserInfo'] = $modx->parseText($tpl, [
        'username' => $modx->getLoginUserName(),
        'role' => $_SESSION['mgrPermissions']['name'],
        'lastlogin' => $loginCount > 1 ? $modx->toDateFormat($modx->timestamp($_SESSION['mgrLastlogin'])) : '-',
        'logincount' => $loginCount,
    ]);

    $activeUsers = \EvolutionCMS\Models\ActiveUserSession::query()
        ->join('active_users', 'active_users.sid', '=', 'active_user_sessions.sid')
        ->where('active_users.action', '<>', 8)
        ->orderBy('username', 'ASC')
        ->orderBy('active_users.sid', 'ASC');
    if ($activeUsers->count() < 1) {
        $html = '<p>[%no_active_users_found%]</p>';
    } else {
        $now = $modx->timestamp($_SERVER['REQUEST_TIME']);
        if (extension_loaded('intl')) {
            // https://www.php.net/manual/en/class.intldateformatter.php
            // https://www.php.net/manual/en/datetime.createfromformat.php
            $formatter = new IntlDateFormatter(evolutionCMS()->getConfig('manager_language'), IntlDateFormatter::MEDIUM, IntlDateFormatter::MEDIUM, null, null, 'HH:mm:ss');
            $ph['now'] = $formatter->format($now);
        } else {
            $ph['now'] = date('H:i:s', $now);
        }
        $timetocheck = $now - 60 * 20; //+$server_offset_time;
        $html = '
        <div class="card-body">
            [%onlineusers_message%]
            <b>[+now+]</b>):
        </div>
        <div class="table-responsive">
        <table class="table data">
        <thead>
            <tr>
                <th>[%onlineusers_user%]</th>
                <th>ID</th>
                <th>[%onlineusers_ipaddress%]</th>
                <th>[%onlineusers_lasthit%]</th>
                <th>[%onlineusers_action%]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
            </tr>
        </thead>
        <tbody>';

        $userList = [];
        $userCount = [];
        // Create userlist with session-count first before output
        foreach ($activeUsers->get()->toArray() as $activeUser) {
            $userCount[$activeUser['internalKey']] = isset($userCount[$activeUser['internalKey']]) ? $userCount[$activeUser['internalKey']] + 1 : 1;

            $idle = $activeUser['lasthit'] < $timetocheck ? ' class="userIdle"' : '';
            $webicon = $activeUser['internalKey'] < 0 ? '<i class="[&icon_globe&]"></i>' : '';
            $ip = $activeUser['ip'] === '::1' ? '127.0.0.1' : $activeUser['ip'];
            $currentaction = EvolutionCMS\Legacy\LogHandler::getAction($activeUser['action'], $activeUser['id']);
            if (extension_loaded('intl')) {
                // https://www.php.net/manual/en/class.intldateformatter.php
                // https://www.php.net/manual/en/datetime.createfromformat.php
                $formatter = new IntlDateFormatter(evolutionCMS()->getConfig('manager_language'), IntlDateFormatter::MEDIUM, IntlDateFormatter::MEDIUM, null, null, 'HH:mm:ss');
                $lasthit = $formatter->format($modx->timestamp($activeUser['lasthit']));
            } else {
                $lasthit = date('H:i:s', $modx->timestamp($activeUser['lasthit']));
            }
            $userList[] = [$idle, '', $activeUser['username'], $webicon, abs($activeUser['internalKey']), $ip, $lasthit, $currentaction];
        }
        foreach ($userList as $params) {
            $params[1] = $userCount[$params[4]] > 1 ? ' class="userMultipleSessions"' : '';
            $html .= "\n\t\t" . vsprintf('<tr%s><td><strong%s>%s</strong></td><td>%s%s</td><td>%s</td><td>%s</td><td>%s</td></tr>', $params);
        }

        $html .= '
        </tbody>
        </table>
    </div>
    ';
    }
    $ph['OnlineInfo'] = $html;

    // include rss feeds for important forum topics
    // Here you can set the urls to retrieve the RSS from. Simply add a $urls line following the numbering progress in the square brakets.

    $urls['modx_news_content'] = $modx->getConfig('rss_url_news');
    $urls['modx_security_notices_content'] = $modx->getConfig('rss_url_security');

    // How many items per Feed?
    $itemsNumber = 3;


    $feedData = cache()->remember('feeddata', 24 * 3600, function() use ($modx, $urls, $itemsNumber) {
        // create Feed
        $feedData = [];
        $feed = new \SimplePie\SimplePie();
        $feedCache = evolutionCMS()->getCachePath() . 'rss/';
        \Illuminate\Support\Facades\File::ensureDirectoryExists($feedCache);
        $feed->set_cache_location($feedCache);
        $feed->set_cache_duration(24 * 3600);
        foreach ($urls as $section => $url) {
            if (empty($url)) {
                continue;
            }
            $output = '';
            $feed->set_feed_url($url);
            $feed->init();
            $items = $feed->get_items(0, $itemsNumber);
            if (empty($items)) {
                $feedData[$section] = 'Failed to retrieve ' . $url;
                continue;
            }
            $output = '<ul>';
            foreach ($items as $item) {
                $href = $item->get_link();
                $title = $item->get_title();
                $pubdate = $item->get_date();
                $pubdate = $modx->toDateFormat(strtotime($pubdate));
                $description = strip_tags($item->get_content());
                if (strlen($description) > 199) {
                    $description = \Illuminate\Support\Str::words($description, 15, '...');
                    $description .= '<br />Read <a href="' . $href . '" target="_blank">more</a>.';
                }
                $output .= '<li><a href="' . $href . '" target="_blank">' . $title . '</a> - <b>' . $pubdate . '</b><br />' . $description . '</li>';
            }
            $output .= '</ul>';
            $feedData[$section] = $output;
        }

        return $feedData;
    });

    $ph['modx_security_notices_content'] = $feedData['modx_security_notices_content'] ?? [];
    $ph['modx_news_content'] = $feedData['modx_news_content'] ?? [];
    $ph['theme'] = $modx->getConfig('manager_theme');
    $ph['site_name'] = $modx->getPhpCompat()->entities($modx->getConfig('site_name'));
    $ph['home'] = $_lang['home'];
    $ph['logo_slogan'] = $_lang['logo_slogan'];
    $ph['welcome_title'] = $_lang['welcome_title'];
    $ph['search'] = $_lang['search'];
    $ph['settings_config'] = $_lang['settings_config'];
    $ph['configcheck_title'] = $_lang['configcheck_title'];
    $ph['online'] = $_lang['online'];
    $ph['onlineusers_title'] = $_lang['onlineusers_title'];
    $ph['recent_docs'] = $_lang['recent_docs'];
    $ph['activity_title'] = $_lang['activity_title'];
    $ph['info'] = $_lang['info'];
    $ph['yourinfo_title'] = $_lang['yourinfo_title'];

    $ph['modx_security_notices'] = $_lang['security_notices_tab'];
    $ph['modx_security_notices_title'] = $_lang['security_notices_title'];
    $ph['modx_news'] = $_lang['modx_news_tab'];
    $ph['modx_news_title'] = $_lang['modx_news_title'];

    $modx->toPlaceholders($ph);

    $script = $modx->getChunk('manager#welcome\StartUpScript');
    $modx->regClientScript($script);

    // invoke event OnManagerWelcomePrerender
    $evtOut = $modx->invokeEvent('OnManagerWelcomePrerender');
    if (is_array($evtOut)) {
        $output = implode('', $evtOut);
        $ph['OnManagerWelcomePrerender'] = $output;
    }

    $widgets['welcome'] = [
        'menuindex' => '10',
        'id' => 'welcome',
        'cols' => 'col-lg-6',
        'icon' => 'fa-home',
        'title' => '[%welcome_title%]',
        'body' =>
            '
                <div class="wm_buttons card-body">' .
            ($modx->hasPermission('new_document')
                ? '
                    <span class="wm_button">
                        <a target="main" href="index.php?a=4">
                            <i class="' .
                    $_style['icon_document'] .
                    $_style['icon_size_2x'] .
                    $_style['icon_size_fix'] .
                    '"></i>
                            <span>[%add_resource%]</span>
                        </a>
                    </span>
                    <span class="wm_button">
                        <a target="main" href="index.php?a=72">
                            <i class="' .
                    $_style['icon_chain'] .
                    $_style['icon_size_2x'] .
                    $_style['icon_size_fix'] .
                    '"></i>
                            <span>[%add_weblink%]</span>
                        </a>
                    </span>
                    '
                : '') .
            ($modx->hasPermission('assets_images')
                ? '
                    <span class="wm_button">
                        <a target="main" href="media/browser/mcpuk/browse.php?filemanager=media/browser/mcpuk/browse.php&type=images">
                            <i class="' .
                    $_style['icon_camera'] .
                    $_style['icon_size_2x'] .
                    $_style['icon_size_fix'] .
                    '"></i>
                            <span>[%images_management%]</span>
                        </a>
                    </span>
                    '
                : '') .
            ($modx->hasPermission('assets_files')
                ? '
                    <span class="wm_button">
                        <a target="main" href="media/browser/mcpuk/browse.php?filemanager=media/browser/mcpuk/browse.php&type=files">
                            <i class="' .
                    $_style['icon_files'] .
                    $_style['icon_size_2x'] .
                    $_style['icon_size_fix'] .
                    '"></i>
                            <span>[%files_management%]</span>
                        </a>
                    </span>
                    '
                : '') .
            ($modx->hasPermission('bk_manager')
                ? '
                    <span class="wm_button">
                        <a target="main" href="index.php?a=93">
                            <i class="' .
                    $_style['icon_database'] .
                    $_style['icon_size_2x'] .
                    $_style['icon_size_fix'] .
                    '"></i>
                            <span>[%bk_manager%]</span>
                        </a>
                    </span>
                    '
                : '') .
            ($modx->hasPermission('change_password')
                ? '
                    <span class="wm_button">
                        <a target="main" href="index.php?a=28">
                            <i class="' .
                    $_style['icon_lock'] .
                    $_style['icon_size_2x'] .
                    $_style['icon_size_fix'] .
                    '"></i>
                            <span>[%change_password%]</span>
                        </a>
                    </span>
                    '
                : '') .
            '
                    <span class="wm_button">
                        <a target="_top" href="index.php?a=8">
                            <i class="' .
            $_style['icon_logout'] .
            $_style['icon_size_2x'] .
            $_style['icon_size_fix'] .
            '"></i>
                            <span>[%logout%]</span>
                        </a>
                    </span>
                </div>
                <div class="userprofiletable card-body">
                    [+UserInfo+]
                </div>
            ',
        'hide' => '0',
    ];
    $widgets['onlineinfo'] = [
        'menuindex' => '20',
        'id' => 'onlineinfo',
        'cols' => 'col-lg-6',
        'icon' => 'fa-user',
        'title' => '[%onlineusers_title%]',
        'body' => '<div class="userstable">[+OnlineInfo+]</div>',
        'hide' => '0',
    ];
    $widgets['recentinfo'] = [
        'menuindex' => '30',
        'id' => 'modxrecent_widget',
        'cols' => 'col-sm-12',
        'icon' => 'fa-pencil-square-o',
        'title' => '[%activity_title%]',
        'body' => '<div class="widget-stage">[+RecentInfo+]</div>',
        'hide' => '0',
    ];
    if ($modx->getConfig('rss_url_news')) {
        $widgets['news'] = [
            'menuindex' => '40',
            'id' => 'news',
            'cols' => 'col-sm-6',
            'icon' => 'fa-rss',
            'title' => '[%modx_news_title%]',
            'body' => '<div style="max-height:200px;overflow-y: scroll;padding: 1rem .5rem">[+modx_news_content+]</div>',
            'hide' => '0',
        ];
    }
    if ($modx->getConfig('rss_url_security')) {
        $widgets['security'] = [
            'menuindex' => '50',
            'id' => 'security',
            'cols' => 'col-sm-6',
            'icon' => 'fa-exclamation-triangle',
            'title' => '[%security_notices_title%]',
            'body' => '<div style="max-height:200px;overflow-y: scroll;padding: 1rem .5rem">[+modx_security_notices_content+]</div>',
            'hide' => '0',
        ];
    }

    // invoke OnManagerWelcomeHome event
    $sitewidgets = $modx->invokeEvent('OnManagerWelcomeHome', ['widgets' => $widgets]);
    if (is_array($sitewidgets)) {
        $newwidgets = [];
        foreach ($sitewidgets as $widget) {
            $newwidgets = array_merge($newwidgets, unserialize($widget));
        }
        $widgets = count($newwidgets) > 0 ? $newwidgets : $widgets;
    }

    usort($widgets, function ($a, $b) {
        return $a['menuindex'] - $b['menuindex'];
    });

    $tpl = $modx->getChunk('manager#welcome\Widget');
    $output = '';
    foreach ($widgets as $widget) {
        if ((bool) get_by_key($widget, 'hide', false) !== true) {
            $output .= $modx->parseText($tpl, $widget);
        }
    }
    $ph['widgets'] = $output;
    ?>
    {!! ManagerTheme::makeTemplate('welcome', 'manager_welcome_tpl', $ph, false) !!}
@endsection
