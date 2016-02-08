<?php
/**
 * Copyright 2016 Lengow SAS.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may
 * not use this file except in compliance with the License. You may obtain
 * a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations
 * under the License.
 *
 * @author    Team Connector <team-connector@lengow.com>
 * @copyright 2016 Lengow SAS
 * @license   http://www.apache.org/licenses/LICENSE-2.0
 */

if (!defined('_PS_VERSION_')) {
    exit;
}

require_once _PS_MODULE_DIR_.'lengow/lengow.php';

/**
 * The Lengow's Order Admin Controller.
 *
 */
class AdminLengowOrderController extends ModuleAdminController
{
    public function __construct()
    {

        parent::__construct();

        $this->lang = false;
        $this->context = Context::getContext();
        $this->context->smarty->assign('lengow_link', new LengowLink());
        $this->lite_display = true;
        $this->lang = true;
        $this->explicitSelect = true;
        $this->list_no_link = true;
        $this->template = 'layout.tpl';
        $this->display = 'view';

        parent::__construct();

        $this->lengow_controller = new LengowOrderController();
        $this->lengow_controller->postProcess();
        $this->lengow_controller->display();

    }
}
