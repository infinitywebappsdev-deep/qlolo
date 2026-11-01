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
                    <h3 class="panel-title"><i class="icon-user"></i> Staff Directory</h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label>Department</label>
                                <select class="form-control">
                                    <option>Housekeeping</option>
                                    <option>Front desk</option>
                                    <option>Concierge</option>
                                    <option>Kitchen</option>
                                    <option>Maintenance</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label>Status</label>
                                <select class="form-control">
                                    <option>Active</option>
                                    <option>On leave</option>
                                    <option>Inactive</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label>Role</label>
                                <select class="form-control">
                                    <option>Manager</option>
                                    <option>Housekeeper</option>
                                    <option>Receptionist</option>
                                    <option>Chef</option>
                                    <option>Mechanic</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-3 text-right">
                            <button class="btn btn-primary"><i class="icon-user-plus"></i> Add staff</button>
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
                    <h3 class="panel-title"><i class="icon-list-alt"></i> Staff schedule</h3>
                </div>
                <div class="panel-body">
                    <div class="erp-scroll">
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>Employee</th>
                                    <th>Role</th>
                                    <th>Dept</th>
                                    <th>Status</th>
                                    <th>Hours this month</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$erp_staff item=$person}
                                    <tr>
                                        <td>{$person.name|default:'—'}</td>
                                        <td>{$person.role|default:'—'}</td>
                                        <td>{$person.department|default:'—'}</td>
                                        <td>
                                            <span class="erp-status-badge erp-status-{$person.status|default:'ok'}">
                                                {switch $person.status}
                                                    {case 'active'}Active{/case}
                                                    {case 'on_leave'}On leave{/case}
                                                    {default}Inactive{/default}
                                                </span>
                                        </td>
                                        <td>{$person.hours|default:'—'}</td>
                                        <td>
                                            <a class="btn btn-xs btn-default" href="#">Edit</a>
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
