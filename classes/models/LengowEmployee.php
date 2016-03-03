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

/**
 * Lengow Customer class
 *
 */
class LengowEmployee extends Employee
{

    /**
     * Return all employee id and email
     *
     * @return array Employees
     */
    public static function getEmployees($active_only = true)
    {
        return Db::getInstance()->ExecuteS('
        SELECT `id_employee`, CONCAT(`firstname`, \' \', `lastname`) name
        FROM `' . _DB_PREFIX_ . 'employee`
        WHERE `active` = 1
        ORDER BY `email`');
    }
}