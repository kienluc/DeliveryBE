//<script src="https://cdn.jsdelivr.net/npm/chart.js@3.6.0/dist/chart.min.js"></script>
//
//function orderChart(id, orderLabel=[], orderInfo=[]){
//    let colors = []
//    for (let i = 0; i <  orderInfo.length; i++)
//        colors.push(generateColor())
//    const data = {
//      labels: orderLabel,
//      datasets: [{
//        label: 'Thống kê đơn hàng',
//        data: orderInfo,
//        backgroundColor: colors,
//        hoverOffset: 6
//      }]
//    };
//    const config = {
//        type: 'bar',
//        data: data,
//    };
//    let ctx = document.getElementById(id).getContext("2d")
//
//    new Chart(ctx, config)
//}