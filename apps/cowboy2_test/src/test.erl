-module(test).

a() ->
    #{informational => [], pid => "<0.730.0>",
      procs =>
	  #{"<0.731.0>" =>
		#{exit => -576460603495042603, reason => normal,
		  spawn => -576460603495162603}},
      reason => normal, ref => my_http_listener,
      req =>
	  #{body_length => 0, cert => undefined,
	    has_body => false,
	    headers =>
		#{<<"accept">> =>
		      <<"text/html,application/xhtml+xml,application/x"
			"ml;q=0.9,image/webp,image/apng,*/*;q=0.8">>,
		  <<"accept-encoding">> => <<"gzip, deflate, br">>,
		  <<"accept-language">> => <<"en-US,en;q=0.9,hu;q=0.8">>,
		  <<"cache-control">> => <<"max-age=0">>,
		  <<"connection">> => <<"keep-alive">>,
		  <<"cookie">> =>
		      <<"csrftoken=HmjVMspGmFg6OvmWtqU0SLniOmw0rSAD; "
			"grafana_sess=d4af0c504b5657c7">>,
		  <<"host">> => <<"localhost:8081">>,
		  <<"upgrade-insecure-requests">> => <<"1">>,
		  <<"user-agent">> =>
		      <<"Mozilla/5.0 (Macintosh; Intel Mac OS "
			"X 10_14_3) AppleWebKit/537.36 (KHTML, "
			"like Gecko) Chrome/72.0.3626.109 Safari/537.3"
			"6">>},
	    host => <<"localhost">>, method => <<"GET">>,
	    path => <<"/">>, peer => {{127, 0, 0, 1}, 58693},
	    pid => "<0.730.0>", port => 8081, qs => <<>>,
	    ref => my_http_listener, scheme => <<"http">>,
	    sock => {{127, 0, 0, 1}, 8081}, streamid => 1,
	    version => 'HTTP/1.1'},
      req_body_end => undefined, req_body_length => 0,
      req_body_start => undefined,
      req_end => -576460603495029603,
      req_start => -576460603495173603,
      resp_body_length => 13, resp_end => -576460603495078603,
      resp_headers =>
	  #{<<"content-length">> => <<"13">>,
	    <<"content-type">> => <<"text/plain">>,
	    <<"date">> => <<"Mon, 25 Feb 2019 10:41:33 GMT">>,
	    <<"server">> => <<"Cowboy">>},
      resp_start => -576460603495078603, resp_status => 200,
      streamid => 1}.
