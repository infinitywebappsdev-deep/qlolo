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
        <div class="col-md-4">
            <div class="panel panel-default">
                <div class="panel-body erp-kpi">
                    <div class="kpi-value">{$erp_accounting.net_profit|default:0}</div>
                    <div class="kpi-change up">Net profit</div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="panel panel-default">
                <div class="panel-body erp-kpi">
                    <div class="kpi-value">{$erp_accounting.gross_revenue|default:0}</div>
                    <div class="kpi-change up">Gross revenue</div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="panel panel-default">
                <div class="panel-body erp-kpi">
                    <div class="kpi-value">{$erp_accounting.expenses|default:0}</div>
                    <div class="kpi-change down">Expenses</div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="erp-section">
    <div class="row">
        <div class="col-lg-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="icon-credit-card"></i> Revenue mix</h3>
                </div>
                <div class="panel-body">
                    <div class="erp-scroll" style="max-height:260px;">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Payment method</th>
                                    <th>Transactions</th>
                                    <th>Revenue</th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$erp_accounting.revenue_mix item=$row}
                                    <tr>
                                        <td>{$row.method|default:'—'}</td>
                                        <td>{$row.transactions|default:0}</td>
                                        <td>{$row.revenue|default:0}</td>
                                    </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="icon-clock-o"></i> Recent expense</h3>
                </div>
                <div class="panel-body">
                    <div class="erp-scroll" style="max-height:260px;">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>Vendor</th>
                                    <th>Category</th>
                                    <th>Amount</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$erp_accounting.recent_expenses item=$row}
                                    <tr>
                                        <td>{$row.date|default:'—'}</td>
                                        <td>{$row.vendor|default:'—'}</td>
                                        <td>{$row.category|default:'—'}</td>
                                        <td>{$row.amount|default:0}</td>
                                        <td><a class="btn btn-xs btn-default">View</a></td>
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
