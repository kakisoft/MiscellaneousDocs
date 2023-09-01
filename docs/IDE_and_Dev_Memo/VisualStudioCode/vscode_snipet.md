
## PHP
```
{
	"logval": {
		"prefix": "logval",
		"body": [
		  "\\Log::info(\"========↓↓↓ valueName ↓↓↓=============================\");",
		  "\\Log::info($valueName);",
		  "\\Log::info(\"========↑↑↑ valueName ↑↑↑=============================\");"
		],
		"description": "Log value"
	  },

	  "logtrace": {
		"prefix": "logtrace",
		"body": [
		  "\\Log::info(\"[source_trace_check_001] File : \" . __FILE__ . \", Class : \" . __CLASS__ );",
		  "\\Log::info(\"[source_trace_check_001] Method : \" . __METHOD__ . \", Line : \" . __LINE__ );",
		  "\\Log::info(\"[source_trace_check_001] File : \" . __FILE__ . \", Class : \" . __CLASS__ . \", Method : \" . __METHOD__ . \", Line : \" . __LINE__ );"
		],
		"description": "Log trace"
	  }
}
```
