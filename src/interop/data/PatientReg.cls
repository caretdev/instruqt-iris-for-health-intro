Class interop.data.PatientRegRequest Extends %Persistent
{

Property PatientID As %Numeric;

Property RegDateTime As %DateTime;

Property LastName As %String;

Property FirstName As %String;

Property Gender As %String;

Storage Default
{
<Data name="PatientRegRequestDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>PatientID</Value>
</Value>
<Value name="3">
<Value>RegDateTime</Value>
</Value>
<Value name="4">
<Value>LastName</Value>
</Value>
<Value name="5">
<Value>FirstName</Value>
</Value>
<Value name="6">
<Value>Gender</Value>
</Value>
</Data>
<DataLocation>^interop.data.PatientRegRCCC8D</DataLocation>
<DefaultData>PatientRegRequestDefaultData</DefaultData>
<IdLocation>^interop.data.PatientRegRCCC8D</IdLocation>
<IndexLocation>^interop.data.PatientRegRCCC8I</IndexLocation>
<StreamLocation>^interop.data.PatientRegRCCC8S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
