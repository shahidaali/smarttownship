<div id="app">
    <div class="row">
        <div class="col-md-12">
            <div class="admin-section-title">
                <h3><i class="voyager-images"></i> {{ __('Dashboard') }}</h3>
            </div>
            <div class="clear"></div>

            <dashboard-communities
                communities-path="{{ route('community.dashboard') }}"
                >
            </dashboard-communities>
        </div>
    </div>    
</div>
