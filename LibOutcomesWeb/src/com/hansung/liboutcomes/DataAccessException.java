package com.hansung.liboutcomes;

@SuppressWarnings("serial")
public class DataAccessException extends RuntimeException {

	public DataAccessException() {
		super();
	}

	public DataAccessException(String msg, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
		super(msg, cause, enableSuppression, writableStackTrace);
	}

	public DataAccessException(String msg, Throwable cause) {
		super(msg, cause);
	}

	public DataAccessException(String msg) {
		super(msg);
	}

	public DataAccessException(Throwable cause) {
		super(cause);
	}

}
