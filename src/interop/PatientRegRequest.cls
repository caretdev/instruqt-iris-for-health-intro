Class interop.PatientRegRequest Extends Ens.Request
{

Property PatientID As %Numeric;

Property RegDateTime As %DateTime;

Property LastName As %String;

Property FirstName As %String;

Property Gender As %String;

Storage Default
{
<Data name="PatientRegRequestDefaultData">
<Subscript>"PatientRegRequest"</Subscript>
<Value name="1">
<Value>PatientID</Value>
</Value>
<Value name="2">
<Value>RegDateTime</Value>
</Value>
<Value name="3">
<Value>LastName</Value>
</Value>
<Value name="4">
<Value>FirstName</Value>
</Value>
<Value name="5">
<Value>Gender</Value>
</Value>
</Data>
<DefaultData>PatientRegRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
