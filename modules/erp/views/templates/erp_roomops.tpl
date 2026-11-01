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
                    <h3 class="panel-title"><i class="icon-bed"></i> Housekeeping & Rooming</h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label>Room type</label>
                                <select class="form-control">
                                    <option>Deluxe King</option>
                                    <option>Standard Double</option>
                                    <option>Suite</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label>Status</label>
                                <select class="form-control">
                                    <option>To clean</option>
                                    <option>In cleaning</option>
                                    <option>Done</option>
                                    <option>Occupied</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label>Priority</label>
                                <select class="form-control">
                                    <option>Low</option>
                                    <option>Normal</option>
                                    <option>High</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-2 text-right">
                            <button class="btn btn-primary"><i class="icon-plus"></i> Add Maintenance</button>
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
                    <h3 class="panel-title"><i class="icon-tasks"></i> Current tasks</h3>
                </div>
                <div class="panel-body">
                    <div class="erp-scroll">
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>Room</th>
                                    <th>Floor</th>
                                    <th>Status</th>
                                    <th>Assigned to</th>
                                    <th>Due</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$erp_roomops item=$task}
                                    <tr>
                                        <td>{$task.room_name|default:'—'}</td>
                                        <td>{$task.floor|default:'—'}</td>
                                        <td>
                                            <span class="erp-status-badge erp-status-{$task.status|default:'warning'}">
                                                {switch $task.status}
                                                    {case 'to_clean'}To clean{/case}
                                                    {case 'cleaning'}In cleaning{/case}
                                                    {case 'done'}Done{/case}
                                                    {case 'occupied'}Occupied{/case}
                                                    {default}Unknown{/default}
                                                </span>
                                        </td>
                                        <td>{$task.assigned_to|default:'—'}</td>
                                        <td>{$task.due|default:'—'}</td>
                                        <td>
                                            <a class="btn btn-xs btn-default" href="#">Complete</a>
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
