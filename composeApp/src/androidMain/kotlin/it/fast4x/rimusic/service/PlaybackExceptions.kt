package it.fast4x.rimusic.service

import androidx.media3.common.PlaybackException
import androidx.media3.common.util.UnstableApi

@UnstableApi
class PlayableFormatNotFoundException(message: String? = "No playable format found", cause: Throwable? = null) : PlaybackException(message, cause, ERROR_CODE_REMOTE_ERROR)
@UnstableApi
class UnplayableException(message: String? = "Media is unplayable", cause: Throwable? = null) : PlaybackException(message, cause, ERROR_CODE_REMOTE_ERROR)
@UnstableApi
class InterruptedException(message: String? = "Playback interrupted", cause: Throwable? = null) : PlaybackException(message, cause, ERROR_CODE_REMOTE_ERROR)
@UnstableApi
class StreamExpiredException(message: String? = "Stream has expired", cause: Throwable? = null) : PlaybackException(message, cause, ERROR_CODE_REMOTE_ERROR)
@UnstableApi
class LoginRequiredException(message: String? = "Login required for this content", cause: Throwable? = null) : PlaybackException(message, cause, ERROR_CODE_REMOTE_ERROR)
@UnstableApi
class VideoIdMismatchException(message: String? = "Video ID mismatch", cause: Throwable? = null) : PlaybackException(message, cause, ERROR_CODE_REMOTE_ERROR)
@UnstableApi
class PlayableFormatNonSupported : PlaybackException(null, null, ERROR_CODE_PARSING_CONTAINER_UNSUPPORTED)
@UnstableApi
class NoInternetException : PlaybackException(null, null, ERROR_CODE_IO_NETWORK_CONNECTION_FAILED)
@UnstableApi
class TimeoutException : PlaybackException(null, null, ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT)
@UnstableApi
class UnknownException : PlaybackException(null, null, ERROR_CODE_REMOTE_ERROR)
@UnstableApi
class FakeException : PlaybackException(null, null, ERROR_CODE_IO_NETWORK_CONNECTION_FAILED)
@UnstableApi
class AccessDeniedToPlayableFormatException : PlaybackException(null, null, ERROR_CODE_REMOTE_ERROR)

