--- awesome screen API
-- @author Julien Danjou &lt;julien@danjou.info&gt;
-- @copyright 2008-2009 Julien Danjou
-- @module screen

--- Screen is a table where indexes are screen number. You can use screen[1]
-- to get access to the first screen, etc. Alternatively, if RANDR information
-- is available, you can use output names for finding screen objects.
-- Each screen has a set of properties.
--
-- @field geometry The screen coordinates. Immutable.
-- @field workarea The screen workarea.
-- @field index The screen number.
-- @field outputs If RANDR information is available, a list of outputs for this
--   screen and their size in mm.
-- @table screen

--- Get the number of screen.
--
-- @return The screen count, at least 1.
-- @function count

--- Add a signal to a screen.
--
-- @param name A signal name.
-- @param func A function to call when the signal is emitted.
-- @function connect_signal

--- Remove a signal to a screen.
--
-- @param name A signal name.
-- @param func A function to remove
-- @function disconnect_signal

--- Emit a signal to a screen.
--
-- @param name A signal name.
-- @param ... Various arguments, optional.
-- @function emit_signal
