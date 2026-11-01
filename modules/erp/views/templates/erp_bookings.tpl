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
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="icon-calendar"></i> Reservation Calendar</h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label>From</label>
                                <input class="datepicker form-control" id="erp_book_from" type="text">
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label>To</label>
                                <input class="datepicker form-control" id="erp_book_to" type="text">
                            </div>
                        </div>
                        <div class="col-sm-4 text-right">
                            <button class="btn btn-primary" onclick="loadErpBookings()"><i class="icon-search"></i> Search</button>
                        </div>
                    </div>
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
                    <h3 class="panel-title"><i class="icon-list"></i> Reservations</h3>
                </div>
                <div class="panel-body">
                    <div class="erp-scroll">
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>Booking ID</th>
                                    <th>Room</th>
                                    <th>Guest</th>
                                    <th>Check in</th>
                                    <th>Check out</th>
                                    <th>Nights</th>
                                    <th>Status</th>
                                    <th>Total</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$erp_bookings item=$booking}
                                    <tr>
                                        <td>{$booking.id|default:'—'}</td>
                                        <td>{$booking.room_name|default:'—'}</td>
                                        <td>{$booking.guest_name|default:'—'}</td>
                                        <td>{$booking.check_in|default:'—'}</td>
                                        <td>{$booking.check_out|default:'—'}</td>
                                        <td>{$booking.nights|default:0}</td>
                                        <td>
                                            <span class="erp-status-badge erp-status-{$booking.status|default:'pending'}">
                                                {switch $booking.status}
                                                    {case 'confirmed'}Confirmed{/case}
                                                    {case 'checked-in'}Checked in{/case}
                                                    {case 'checked-out'}Checked out{/case}
                                                    {case 'cancelled'}Cancelled{/case}
                                                    {default}Pending{/default}
                                                </span>
                                        </td>
                                        <td>{$booking.total_paid_tax_excl|default:0}</td>
                                        <td>
                                            <a class="btn btn-xs btn-default" href="#" title="Edit"><i class="icon-pencil"></i></a>
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
