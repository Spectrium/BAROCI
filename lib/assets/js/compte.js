
    var launch = new Date("01/08/2020, 11:49:36 AM"); 
// "January 09, 2020" or use this format
    var years = document.getElementById('years');
    var months = document.getElementById('months');
    var days = document.getElementById('days');
    var hours = document.getElementById('hours');
    var minutes = document.getElementById('minutes');
    var seconds = document.getElementById('seconds');

    setDate();
    function setDate() {
        let now = new Date();
        let s = (launch.getTime() - now.getTime())/1000;

        var y = Math.floor(s/31536000);
        years.innerHTML = '<strong>' + y + '</strong>' + ' ' + '</br>' + 'year' + (y > 1 ? 's' : '');
        s -= y * 31536000;

        var mo = Math.floor(s/2628000);
        months.innerHTML = '<strong>' + mo + '</strong>' + ' ' + '</br>' + 'month' + (mo > 1 ? 's' : '');
        s -= mo * 2628000;

        let d = Math.floor(s/86400);
        days.innerHTML = '<strong>' + d + '</strong>' + ' ' + '</br>' +'Jour'+(d>1?'s':'');
        s = s - d * 86400;

        var h = Math.floor(s/3600);
        hours.innerHTML = '<strong>' + h + '</strong>' + ' ' + '</br>' + 'hour' + (h > 1 ? 's' : '');
        s -= h*3600;

        var m = Math.floor(s/60);
        minutes.innerHTML = '<strong>' + m + '</strong>' + ' ' + '</br>' + 'minute' + (m > 1 ? 's' : '');
        s -= m*60;

        s = Math.floor(s);
        seconds.innerHTML = '<strong>' + s + '</strong>' + ' ' + '</br>' + 'second' + (s > 1 ? 's' : '');
        
        setTimeout(setDate, 1000);
        // ('#days').html('<strong>' + d + '</strong>');
       
    }

    
