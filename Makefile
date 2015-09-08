all: upcoming past

upcoming:
	echo 'name,url,location,dates' > upcoming.csv
	cat README.md | sed 's/^| \[\(.*\)\](\(.*\)) | \(.*\) | \(.*\) |$$/"\1","\2","\3","\4"/;tx;d;:x' >> upcoming.csv

past:
	echo 'name,url,location,dates' > past.csv
	cat Past-Hackathons.md | sed 's/^| \[\(.*\)\](\(.*\)) | \(.*\) | \(.*\) |$$/"\1","\2","\3","\4"/;tx;d;:x' >> past.csv

clean:
	rm upcoming.csv past.csv
