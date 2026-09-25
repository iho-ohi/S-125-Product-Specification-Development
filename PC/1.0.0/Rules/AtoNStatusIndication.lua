function AtonStatusIndication(feature, featurePortrayal, contextParameters)
	local viewingGroup
	if feature.PrimitiveType == PrimitiveType.Point then
		viewingGroup = 31020
		featurePortrayal:AddInstructions('ViewingGroup:31020;DrawingPriority:15;DisplayPlane:OverRADAR')
		if feature.changeTypes == 1 then
			featurePortrayal:AddInstructions('PointInstruction:CHNGAC02')
		elseif feature.changeTypes == 2 then
			featurePortrayal:AddInstructions('PointInstruction:CHNGDC02')
		elseif feature.changeTypes == 3 then
			featurePortrayal:AddInstructions('PointInstruction:CHNGSC02')
		elseif feature.changeTypes == 4 then
			featurePortrayal:AddInstructions('PointInstruction:CHNGTC02')
		elseif feature.changeTypes == 5 then
			featurePortrayal:AddInstructions('PointInstruction:CHNGCC01')
		else
			featurePortrayal:AddInstructions('PointInstruction:QUESMRK1')
		end
	else
		error('Invalid primitive type or mariner settings passed to portrayal')
	end

	return viewingGroup
end