<?php
/**
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 *  @author PrestaShop SA <contact@prestashop.com>
 *  @copyright  2007-2017 PrestaShop SA
 *  @version  Release: $Revision$
 *  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 *  International Registered Trademark & Property of PrestaShop SA
 */

{assign var='erp_active' value=false}
{assign var='erp_tab' value='overview'}

{assign var='erp_nav' array(
    array('id' => 'erp_overview', 'label' => 'ERP Overview', 'icon' => 'icon-dashboard', 'href' => $erp_dashboard_link, 'current' => $erp_active && $erp_tab == 'overview'),
    array('id' => 'erp_bookings', 'label' => 'Room & Reservations', 'icon' => 'icon-calendar', 'href' => $erp_booking_link, 'current' => $erp_active && $erp_tab == 'bookings'),
    array('id' => 'erp_roomops', 'label' => 'Housekeeping', 'icon' => 'icon-bed', 'href' => $erp_roomops_link, 'current' => $erp_active && $erp_tab == 'roomops'),
    array('id' => 'erp_staff', 'label' => 'Staff & Payroll', 'icon' => 'icon-user', 'href' => $erp_staff_link, 'current' => $erp_active && $erp_tab == 'staff'),
    array('id' => 'erp_accounting', 'label' => 'Accounting', 'icon' => 'icon-credit-card', 'href' => $erp_accounting_link, 'current' => $erp_active && $erp_tab == 'accounting'),
    array('id' => 'erp_analytics', 'label' => 'Analytics', 'icon' => 'icon-pie-chart', 'href' => $erp_analytics_link, 'current' => $erp_active && $erp_tab == 'analytics'),
))
{assign var='erp_current' value=$erp_active ? ($erp_tab ? $erp_tab : 'overview') : false}
