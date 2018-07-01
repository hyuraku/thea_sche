import Vue from 'vue/dist/vue.esm';
import axios from 'axios';

// 作品のIDのリスト
// 劇場のIDのリスト
var thea_id_list = []
var work_id_list = []
var date_id_list = []

window.onload = function() {
  var theaterIndex = new Vue({
    el: '#js-theaterIndex',
    data: {
      scheduleInfo: {},
      scheduleInfoBool: false,
      scheduleTopBool: true,
    },
    methods: {
      setDateInfo(id) {
        // if (date_id_list.indexOf(id)) {
        //   var date_id_list = date_id_list.filter(x => x !== id)
        // } else {
        //   date_id_list.push(id)
        // }
        // if (date_id_list.length > 0) {
        // if (thea_id_list.length > 0) {
        //   if (work_id_list.length > 0) {
        //     // get_all_dataのメソッド
        //     for (var dateId of date_id_list) {
        //       for (var theaId of thea_id_list) {
        //         for (var workId of work_id_list) {
        //           axios.get(`api/schedules/get_all_data/${dateId}/${theaId}/${workId}`)
        //             .then(res => {
        //               this.scheduleInfo = res.data;
        //               this.scheduleInfoBool = true;
        //             });
        //         }
        //       }
        //     }
        //   } else {
        //     // get_date_theaのメソッド
        //     for (var dateId of date_id_list) {
        //       for (var theaId of thea_id_list) {
        //         axios.get(`api/schedules/get_date_thea/${dateId}/${theaId}`)
        //           .then(res => {
        //             this.scheduleInfo = res.data;
        //             this.scheduleInfoBool = true;
        //           });
        //       }
        //     }
        //   }
        // } else if (work_id_list.length > 0) {
        //   // get_date_workのメソッド
        //   for (var dateId of date_id_list) {
        //     for (var workId of work_id_list) {
        //       axios.get(`api/schedules/get_date_work/${dateId}/${workId}`)
        //         .then(res => {
        //           this.scheduleInfo = res.data;
        //           this.scheduleInfoBool = true;
        //         });
        //     }
        //   }
        // } else {
          // for (var dateId of date_id_list) {
          //   for (var workId of work_id_list) {
          //     axios.get(`api/schedules/get_date_work/${dateId}/${workId}`)
          //       .then(res => {
          //         this.scheduleInfo = res.data;
          //         this.scheduleInfoBool = true;
          //       });
          //   }
          // }
          axios.get(`api/schedules/get/${id}`)
            .then(res => {
              this.scheduleInfo = res.data;
              this.scheduleInfoBool = true;
              this.scheduleTopBool= false;
            });
        // }
        // axios.get(`api/schedules/get/${id}`)
        //   .then(res => {
        //     this.scheduleInfo = res.data;
        //     this.scheduleInfoBool = true;
        //   });
      },

      setWorkInfo(id) {
        work_id_list.push(id)
        axios.get(`api/schedules/index/${id}`)
          .then(res => {
            this.scheduleInfo = res.data;
            this.scheduleInfoBool = true;
            this.scheduleTopBool= false;
          });
      },

      setTheaterInfo(id) {
        thea_id_list.push(id)
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
