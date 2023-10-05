Class interop.FoundationProduction Extends Ens.Production [ Not ProcedureBlock ]
{

XData ProductionDefinition
{
<Production Name="interop.FoundationProduction" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>1</ActorPoolSize>
  <Item Name="TCPService" Category="" ClassName="EnsLib.HL7.Service.TCPService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="Port">5000</Setting>
    <Setting Target="Adapter" Name="StayConnected">0</Setting>
    <Setting Target="Host" Name="TargetConfigNames">RouteAndTransform</Setting>
    <Setting Target="Host" Name="MessageSchemaCategory">2.4</Setting>
  </Item>
  <Item Name="TCPOperation" Category="" ClassName="EnsLib.HL7.Operation.TCPOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="IPAddress">host.docker.internal</Setting>
    <Setting Target="Adapter" Name="Port">5001</Setting>
    <Setting Target="Adapter" Name="StayConnected">0</Setting>
  </Item>
  <Item Name="RouteAndTransform" Category="" ClassName="EnsLib.HL7.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">interop.RouteAndTransform</Setting>
    <Setting Target="Host" Name="Validation">dm-z</Setting>
  </Item>
  <Item Name="HTTPService" Category="" ClassName="interop.HL7.Service.HTTPService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="TargetConfigNames">RouteAndTransform</Setting>
    <Setting Target="Host" Name="MessageSchemaCategory">2.4</Setting>
  </Item>
  <Item Name="ToLab" Category="" ClassName="EnsLib.HL7.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/home/irisowner/out</Setting>
  </Item>
  <Item Name="ToTable" Category="" ClassName="interop.PatientRegOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Adapter" Name="StayConnected">0</Setting>
  </Item>
</Production>
}

}
