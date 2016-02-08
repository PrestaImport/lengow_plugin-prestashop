{*
 * Copyright 2015 Lengow SAS.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may
 * not use this file except in compliance with the License. You may obtain
 * a copy of the License at
 *
 *	 http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations
 * under the License.
 *
 *  @author	   Team Connector <team-connector@lengow.com>
 *  @copyright 2015 Lengow SAS
 *  @license   http://www.apache.org/licenses/LICENSE-2.0
 *}

<div id="lengow_order_wrapper">
    <div class="lengow_order_block_header">
        <div class="lengow_order_block_header_content">
            <div id="lengow_wrapper_messages"></div>
            <div class="lengow_order_block_content_left">
                {if $orderCollection['last_import_type'] != 'none'}
                <span class="lengow_strong">Last order importation</span>
                {if $orderCollection['last_import_type'] == 'cron'}
                    (auto)
                {else}
                    (manual)
                {/if}
            <br/>
                {$orderCollection['last_import_date']|date_format:"%A %e %B %Y @ %R"|escape:'htmlall':'UTF-8'}
                {else}
                No order importation for now
                {/if}<br/>
                All orders issues reports will be send to
                mail {', '|implode:$report_mail_address|escape:'htmlall':'UTF-8'}
                <a href="#">(change this?)</a>
            </div>
            <div class="lengow_order_block_content_right">
                <a id="lengow_import_orders" class="lengow_btn" data-href="{$lengow_link->getAbsoluteAdminLink('AdminLengowOrder', true)|escape:'htmlall':'UTF-8'}">
                    Update Orders</a>
            </div>
            <div class="lengow_clear"></div>
        </div>
    </div>
    <div>
        <div id="lengow_order_table_wrapper">
            {html_entity_decode($lengow_table|escape:'htmlall':'UTF-8')}
        </div>
    </div>
</div>


<script type="text/javascript" src="/modules/lengow/views/js/lengow/order.js"></script>