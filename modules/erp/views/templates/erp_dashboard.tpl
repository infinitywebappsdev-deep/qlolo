{*
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/afl-3.0.php
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 *  @author PrestaShop SA <contact@prestashop.com>
 *  @copyright  2007-2017 PrestaShop SA
 *  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 *  International Registered Trademark & Property of PrestaShop SA
 *}

{include file='erp_nav.tpl'}

<div id="erp-dashboard">
    <div class="row">
        <div class="col-lg-3 col-md-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="icon-wrench"></i> Hotel ERP</h3>
                </div>
                <div class="panel-body">
                    <nav class="erp-nav">
                        {foreach from=$erp_nav item=$item}
                            <a class="nav-link {if $item.current}active{/if}" href="{$item.href}">
                                <i class="icon-{$item.icon}"></i>
                                <span>{$item.label}</span>
                            </a>
                        {/foreach}
                    </nav>
                </div>
            </div>
        </div>
        <div class="col-lg-9 col-md-8 erp-content">
            {if $erp_tab == 'overview'}
                {include file='erp_overview.tpl'}
            {elseif $erp_tab == 'bookings'}
                {include file='erp_bookings.tpl'}
            {elseif $erp_tab == 'roomops'}
                {include file='erp_roomops.tpl'}
            {elseif $erp_tab == 'staff'}
                {include file='erp_staff.tpl'}
            {elseif $erp_tab == 'accounting'}
                {include file='erp_accounting.tpl'}
            {elseif $erp_tab == 'analytics'}
                {include file='erp_analytics.tpl'}
            {/if}
        </div>
    </div>
</div>
