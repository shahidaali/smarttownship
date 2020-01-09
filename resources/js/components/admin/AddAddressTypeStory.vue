<template>
  <div class="story-series">
    <div class="series-no"><code>#St_{{ floorNo }}</code></div>
    <div class="edit-fields">
          <div class="edit-field edit-field-col"><label>Flats:</label> <input type="text" :name="fieldName('flats')" v-model="values.flats" autocomplete="off" v-on:input="fieldChange('flats')"> </div>
    </div>
    <div class="story-series-wrap" v-if="values.flats > 0">
          <add-address-type-flat-default v-if="values.flats > 1"
            :series-no="seriesNo"
            :community="community"
            :address-type="addressType"
            >
          </add-address-type-flat-default>
          <add-address-type-flat v-for="flat_no in parseInt(values.flats)" v-bind:key="flat_no"
            :flat-no="flat_no"
            :floor-no="floorNo"
            :series-no="seriesNo"
            :community="community"
            :address-type="addressType"
            >
          </add-address-type-flat>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    floorNo: {
      type: Number,
      default: 0
    },
    seriesNo: {
      type: Number,
      default: 0
    },
    community: {
      type: Object,
      default: {}
    },
    addressType: {
      type: Object,
      default: {}
    },
  },
  data() {
    return {
      is_loading: true,
      values: {
        flats: 0,
        bedroom:1,
        bath:1,
        garage:1,
        area: 0,
        area_unit: 'sq_ft',
      },
      updatedFields: [],
    }
  },
  computed: {
      
  },
  methods: {
    fieldName : function(name) {
        var vm = this;
        return "lines[" + vm.addressType.id + "][series][" + vm.seriesNo + "][stories][" + vm.floorNo + "][" + name + "]";
    },
    fieldChange: function(field) {
      this.updatedFields[field] = this.values[field];
    },
    storyDefaultValueChanged: function(defaultValues) {
      var vm = this;
      $.each(defaultValues, function(fieldName, fieldValue) {
        if( vm.updatedFields[fieldName] === undefined && vm.values[fieldName] !== undefined ) {
            vm.values[fieldName] = fieldValue;
        }
      }); 
    },
  },
  mounted() {
    var vm = this;
  },
  created() {
    var vm = this;
    this.$eventHub.$on('storyDefaultValueChanged', this.storyDefaultValueChanged);
  }
};
</script>
