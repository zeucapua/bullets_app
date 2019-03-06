class Bullet {
  String _note, _desc;
  bool _isCompleted;
  
  Bullet(this._note) { _desc = null; _isCompleted = false; }
  
  void setNote(String title) { _note = title; } String getNote() { return _note; }
  void setDesc(String desc) { _desc = desc; } String getDesc() { return _desc; }
  void toggleIsCompleted() { _isCompleted = _isCompleted ? false : true; }
  bool isCompleted() { return _isCompleted; }
}