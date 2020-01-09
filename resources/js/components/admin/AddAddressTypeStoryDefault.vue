<template>
  <div class="story-series series-alt">
    <div class="series-no"><code>Default</code></div>
   <!--  <div class="edit-fields">
          <div class="edit-field edit-field-col"><label><strong style="font-weight: 700;">Default Values</strong></label></div>
    </div> -->
    <div class="edit-fields">
          <div class="edit-field edit-field-col"><label>Flats:</label> <input type="text"  v-model="values.flats" autocomplete="off" v-on:input="fieldChange('flats')"> </div>
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
        flats: 0,
        bedroom:1,
        bath:1,
        garage:1,
        area: 0,
        area_unit: 'sq_ft',
      }
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
      this.$eventHub.$emit('storyDefaultValueChanged', this.values);
    },
    storiesChanged: function(stories) {
      console.log(this.values);
      this.$eventHub.$emit('storyDefaultValueChanged', this.values);
    }
  },
  mounted() {
    var vm = this;
  },
  created() {
    var vm = this;
    this.$eventHub.$on('storiesChanged', this.storiesChanged);
  }
};
</script>
