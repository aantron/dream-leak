let () =
  Printexc.record_backtrace true;

  Dream.run @@ fun _ ->
    Lwt.return
      (Dream.response
        ~headers:[ ("Content-Type", "text/plain") ]
        "On macOS I leak .\n")
