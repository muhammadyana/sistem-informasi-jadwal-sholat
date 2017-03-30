$(document).ready(function () {
    if($('#map-world')[0]) {
        $('#map-world').vectorMap({
            map: 'world_en',
            backgroundColor: null,
            color: '#eee',
            borderColor: '#eee',
            hoverOpacity: 1,
            selectedColor: '#00BCD4',
            enableZoom: true,
            showTooltip: true,
            normalizeFunction: 'polynomial',
            selectedRegions: ['US', 'EN', 'NZ', 'CN', 'JP', 'SL', 'BR', 'AU'],
            onRegionClick: function (event) {
                event.preventDefault();
            }
        });
    }
});