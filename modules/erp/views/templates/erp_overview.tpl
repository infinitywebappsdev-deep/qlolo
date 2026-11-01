{*
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/afl-3.0.php.
 *}

<div class="erp-section">
    <div class="row">
        <div class="col-md-3">
            <div class="panel panel-default">
                <div class="panel-body erp-kpi">
                    <div class="kpi-value" id="erp_roomcount">{$erp_overview.room_count|default:0}</div>
                    <div class="kpi-change up">{$erp_overview.room_cap|php:null}</div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="panel panel-default">
                <div class="panel-body erp-kpi">
                    <div class="kpi-value" id="erp_occupancy">{$erp_overview.occupancy|default:0}%</div>
                    <div class="kpi-change up">Occupancy</div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="panel panel-default">
                <div class="panel-body erp-kpi">
                    <div class="kpi-value" id="erp_grossbooked">{$erp_overview.gross_booked|default:0}</div>
                    <div class="kpi-change up">Gross Booked</div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="panel panel-default">
                <div class="panel-body erp-kpi">
                    <div class="kpi-value" id="erp_pending">{$erp_overview.pending_bookings|default:0}</div>
                    <div class="kpi-change down">Pending</div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="erp-section">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="icon-calendar"></i> Booking Snapshot</h3>
                </div>
                <div class="panel-body">
                    <div class="erp-scroll">
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>Room</th>
                                    <th>Guest</th>
                                    <th>Check in</th>
                                    <th>Day</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$erp_overview.upcoming_bookings item=$booking}
                                    <tr>
                                        <td class="erp-room-card">
                                            <div class="room-title">{$booking.room_name|default:'—'}</div>
                                            <div class="room-meta">Product ID {$booking.product_id|default:'—'}</div>
                                        </td>
                                        <td>{$booking.guest_name|default:'—'}</td>
                                        <td>{$booking.check_in|default:'—'}</td>
                                        <td>{$booking.check_out|default:'—'}</td>
                                        <td>
                                            <span class="erp-status-badge erp-status-{$booking.status|default:'pending'}">
                                                {switch $booking.status}
                                                    {case 'checked-in'}Checked in{/case}
                                                    {case 'checked-out'}Checked out{/case}
                                                    {case 'arrived'}Arrived{/case}
                                                    {default}pending{/default}
                                                </span>
                                        </td>
                                        <td>
                                            <a href="#" class="btn btn-xs btn-default">Assign</a>
                                        </td>
                                    </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
