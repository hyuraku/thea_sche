import Vue from 'vue/dist/vue.esm';
import axios from 'axios';
import 'babel-polyfill' ;
import * as itertools from '@aureooms/js-itertools' ;
// 作品のIDのリスト
// 劇場のIDのリスト
var theater_id_list = []
var picture_id_list = []
var date_id_list = []

function operate_list(id,list) {
  if (list.indexOf(id)!== -1) {
    let position = list.indexOf(id)
  } else {
    list.push(id)
  }
}

// 2つ以上のを回す
function list_length_check(a_list,b_list,c_lict) {
  pass
}

window.onload = function() {
  var theaterIndex = new Vue({
    el: '#js-theaterIndex',
    data: {
      scheduleInfo :{},
      scheduleInfoBool: false,
      scheduleTopBool: true,
    },
    methods: {
      setDateInfo(id) {
        operate_list(id,date_id_list)

        axios.get(`api/schedules/get/${id}`)
          .then(res => {
            this.scheduleInfo = res.data;
            this.scheduleInfoBool = true;
            this.scheduleTopBool= false;
          });
      },

      setPictureInfo(id) {
        operate_list(id,picture_id_list)
        axios.get(`api/schedules/index/${id}`)
          .then(res => {
            this.scheduleInfo = res.data;
            this.scheduleInfoBool = true;
            this.scheduleTopBool= false;
          });
      },

      setTheaterInfo(id) {
        operate_list(id,theater_id_list)
        axios.get(`api/schedules/show/${id}`)
          .then(res => {
            this.scheduleInfo = res.data;
            this.scheduleInfoBool = true;
            this.scheduleTopBool=false;
          });
      }
    }
  });
}
