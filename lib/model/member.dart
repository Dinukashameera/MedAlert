final String tableMember = 'member';

class MemberFields {
  static final List<String> values = [
    colId,
    colName,
    colEmail,
    colAge,
    colWeight,
    colMe
     
  ];

  static final String colId = '_id';
  static final String colName = 'name';
  static final String colEmail = 'email';
  static final String colAge = 'memberAge';
  static final String colWeight = 'memberWeight';
  static final String colMe = 'memberMe';
 
}

class Member {
  final int id;
  final String name;
  final String email;
  final int memberAge;
  final int  weight;
  final bool me;
 

  const Member({
    this.id,
    this.name,
    this.email,
    this.memberAge,
    this.weight,
    this.me
 
  });

  Member copy({
    int id,
    String name,
    String email,
    int memberAge,
    int  weight,
    bool me
    
  }) =>
      Member(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        memberAge: memberAge ?? this.memberAge,
        weight: weight ?? this.weight,
        me: me ?? this.me,

 
      );

  static Member fromJson(Map<String, Object> json) => Member(
        id: json[MemberFields.colId] as int,
        name: json[MemberFields.colName] as String,
        email: json[MemberFields.colEmail] as String,
        memberAge: json[MemberFields.colAge] as int,
        weight: json[MemberFields.colWeight] as int,
        me: json[MemberFields.colMe] as bool,

 
      );

  Map<String, Object> toJson() => {
        MemberFields.colId: id,
        MemberFields.colName: name,
        MemberFields.colEmail: email,
        MemberFields.colAge: memberAge,
        MemberFields.colWeight: weight,
        MemberFields.colMe: me,

 
      };
}
