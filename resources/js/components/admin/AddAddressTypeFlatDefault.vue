<template>
  <div class="story-series series-alt">
    <div class="series-no"><code>Default</code></div>
    <div class="edit-fields">
          <div class="edit-field edit-field-col"><label>Bedroom:</label> <input type="text" v-model="values.bedroom" autocomplete="off" v-on:input="fieldChange('bedroom')"></div>
          <div class="edit-field edit-field-col"><label>Bath:</label> <input type="text"  v-model="values.bath" autocomplete="off" v-on:input="fieldChange('bath')"></div>
          <div class="edit-field edit-field-col"><label>Garage:</label> <input type="text" v-model="values.garage" autocomplete="off" v-on:input="fieldChange('garage')"></div>
    </div>
    <div class="edit-fields">
          <div class="edit-field edit-field-col"><label>Area:</label> <input type="text" v-model="values.area" autocomplete="off" v-on:input="fieldChange('area')"></div>
          <div class="edit-field edit-field-col"><label>Unit:</label> <select v-model="values.area_unit" v-on:input="fieldChange('area_unit')"><option value="sq_ft" selected="selected">sq .ft</option></select></div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
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
      this.$eventHub.$emit('flatDefaultValueChanged', this.values);
    },
    flatsChanged: function(stories) {
      this.$eventHub.$emit('flatDefaultValueChanged', this.values);
    },
    storyDefaultValueChanged: function(defaultValues) {
      var vm = this;
      $.each(defaultValues, function(fieldName, fieldValue) {
        if( vm.updatedFields[fieldName] === undefined && vm.values[fieldName] !== undefined ) {
            vm.values[fieldName] = fieldValue;
        }
      }); 
      this.$eventHub.$emit('flatDefaultValueChanged', vm.values);
    },
  },
  mounted() {
    var vm = this;
  },
  created() {
    var vm = this;
    this.$eventHub.$on('flatsChanged', this.flatsChanged);
    this.$eventHub.$on('storyDefaultValueChanged', this.storyDefaultValueChanged);
  }
};
</script>
