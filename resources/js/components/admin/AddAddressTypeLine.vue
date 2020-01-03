<template>
  <div class="address-format series-with-no">
    <div class="series-no"><code># {{ number + 1 }}</code></div>
    <div class="series-sctions">
      <div class="edit-fields">
        <div class="edit-field"><a href="#" data-toggle="modal" data-target="#address_format_modal"><span class="voyager-info-circled"></span></a></div>
      </div>
    </div>
    <div class="edit-fields">
          <div class="edit-field edit-field-col"><label>Range:</label> <input type="checkbox" :name="fieldName('series_range')" v-model="series_range" v-on:change="seriesRangeChange"></div>
    </div>
    <div class="edit-fields">
          <div class="edit-field edit-field-col"><label>{{ series_range ? "From" : "House#" }}:</label> <input type="text" :name="fieldName('from')" v-model="from" autocomplete="off"></div>
          <div class="edit-field edit-field-col" v-bind:class="seriesToClass"><label>To:</label> <input type="text" :name="fieldName('to')" v-model="to" autocomplete="off"></div>
    </div>
    <div class="edit-fields">
          <div class="edit-field edit-field-col"><label>ST#:</label> <input type="text" :name="fieldName('street')" v-model="street" autocomplete="off"></div>
          <div class="edit-field edit-field-col"><label>BL#:</label> <input type="text" :name="fieldName('block')" v-model="block" autocomplete="off"></div>
    </div>
    <div class="edit-fields">
          <div class="edit-field edit-field-col"><label>Stories:</label> <input type="text" :name="fieldName('floors')" v-model="floors" autocomplete="off"></div>
          <div class="edit-field edit-field-col"><label>Flats:</label> <input type="text" :name="fieldName('flats')" v-model="flats" autocomplete="off"> </div>
          <div class="edit-field edit-field-col"><label>Ground Floor:</label> <input type="checkbox" :name="fieldName('ground_floor')" v-model="ground_floor"></div>
    </div>
    <div class="edit-fields">
          <div class="edit-field edit-field-col"><label>Bedroom:</label> <input type="text" :name="fieldName('bedroom')" v-model="bedroom" autocomplete="off"></div>
          <div class="edit-field edit-field-col"><label>Bath:</label> <input type="text" :name="fieldName('bath')" v-model="bath" autocomplete="off"></div>
          <div class="edit-field edit-field-col"><label>Garage:</label> <input type="text" :name="fieldName('garage')" v-model="garage" autocomplete="off"></div>
    </div>
    <div class="edit-fields">
          <div class="edit-field edit-field-col"><label>Area:</label> <input type="text" :name="fieldName('area')" v-model="area" autocomplete="off"></div>
          <div class="edit-field edit-field-col"><label>Unit:</label> <select :name="fieldName('area_unit')" v-model="area_unit"><option value="sq_ft" selected="selected">sq .ft</option></select></div>
    </div>
    <div class="edit-fields">
          <div class="edit-field edit-field-col"><label>Format:</label> <input type="text" :name="fieldName('format')" style="width: 700px" v-model="format" autocomplete="off"></div>
    </div>
    <div class="edit-fields">
          <div class="edit-field edit-field-col"><label>Output:</label> <input type="text"style="width: 700px; background: #e8e8e8;" autocomplete="off" readonly="" :value="getExampleOutput()"></div>
    </div>
    <div class="edit-fields">
          <div class="edit-field edit-field-col"><label>Tokens:</label> <span v-html="tokenOutput()"></span></div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    community: {
      type: Object,
      default: {}
    },
    addressType: {
      type: Object,
      default: {}
    },
    line: {
      type: Object,
      default: {}
    },
    tokens: {
      type: Object,
      default: {}
    },
    count: {
      type: Number,
      default: 0
    },
    number: {
      type: Number,
      default: 0
    },
  },
  data() {
    return {
      is_loading: true,
      show_sample: false,
      series_range: 1,
      from_label: 'From',
      street: 0,
      block: 0,
      floors: 0,
      flats: 0,
      ground_floor: 0,
      bedroom:1,
      bath:1,
      garage:1,
      area: 0,
      area_unit: 'sq_ft',
      from: this.line.from,
      to: this.line.to,
      to_old_value: this.line.to,
      format: this.line.format,
    }
  },
  computed: {
      seriesToClass: function() {
          return this.series_range ? '' : 'hidden';
      }
  },
  methods: {
    fieldName : function(name) {
        var vm = this;
        return "lines[" + vm.addressType.id + "][series][" + vm.number + "][" + name + "]";
    },
    tokenOutput : function() {
        var vm = this;
        var tokens_output = "";
        $.each(vm.tokens, function(i, token){
            tokens_output += "<code>" + token.token + "</code>";
        });
        return tokens_output;
    },
    totalChanged: function(total_address) {
      this.to = parseInt(this.line.from) + parseInt(total_address) - 1;
    },
    seriesRangeChange: function() {
      if(this.series_range) {
        this.to = this.to_old_value;
      } else {
        this.to = this.from;
      }
    },
    getExampleOutput: function() {
      var vm = this;
      let floor = ((vm.floors > 0 && vm.flats > 0) ? 1 : 0);
      let flat = ((vm.floors > 0 && vm.flats > 0) ? 1 : 0);
      let token_values = {
          '[HOUSE]' : vm.from,
          '[STREET]' : vm.street,
          '[BLOCK]' : vm.block,
          '[FLOOR]' : floor,
          '[FLAT]' : flat,
          '[COMMUNITY]' : vm.community.name,
          '[POSTAL_CODE]' : vm.community.postal_code,
          '[CITY]' : vm.community.city,
          '[STATE]' : vm.community.state,
          '[COUNTRY]' : vm.community.country,
      };

      var address = vm.format;
      $.each(token_values, function(token, value){
          address = address.replace(token, value);
      });

      return address;
    }
  },
  mounted() {
    var vm = this;
  },
  created() {
    var vm = this;
    this.$eventHub.$on('totalChanged', this.totalChanged);
  }
};
</script>
