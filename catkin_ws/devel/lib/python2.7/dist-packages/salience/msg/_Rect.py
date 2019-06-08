# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from salience/Rect.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Rect(genpy.Message):
  _md5sum = "e6d557464a0baf5174b255c2c5be2036"
  _type = "salience/Rect"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# opencv Rect data type, x-y is center point
float64 x0
float64 y0
float64 x1
float64 y1
int32 id
"""
  __slots__ = ['x0','y0','x1','y1','id']
  _slot_types = ['float64','float64','float64','float64','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       x0,y0,x1,y1,id

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Rect, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.x0 is None:
        self.x0 = 0.
      if self.y0 is None:
        self.y0 = 0.
      if self.x1 is None:
        self.x1 = 0.
      if self.y1 is None:
        self.y1 = 0.
      if self.id is None:
        self.id = 0
    else:
      self.x0 = 0.
      self.y0 = 0.
      self.x1 = 0.
      self.y1 = 0.
      self.id = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_4di().pack(_x.x0, _x.y0, _x.x1, _x.y1, _x.id))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 36
      (_x.x0, _x.y0, _x.x1, _x.y1, _x.id,) = _get_struct_4di().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_4di().pack(_x.x0, _x.y0, _x.x1, _x.y1, _x.id))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 36
      (_x.x0, _x.y0, _x.x1, _x.y1, _x.id,) = _get_struct_4di().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4di = None
def _get_struct_4di():
    global _struct_4di
    if _struct_4di is None:
        _struct_4di = struct.Struct("<4di")
    return _struct_4di
