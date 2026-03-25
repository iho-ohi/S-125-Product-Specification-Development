-- Feature Catalogue Version: 1.0.0 (2025/03/25)
-- Modified for S-125 1.0.0 by GST 20260325

-- AtoNStatusIndication main entry point.
function AtoNStatusIndication(feature, featurePortrayal, contextParameters)
	local viewingGroup

	if feature.PrimitiveType == PrimitiveType.Point then
		viewingGroup = 31020
		if contextParameters.RadarOverlay then
			featurePortrayal:AddInstructions('ViewingGroup:31020;DrawingPriority:15;DisplayPlane:OverRADAR')
		else
			featurePortrayal:AddInstructions('ViewingGroup:31020;DrawingPriority:15;DisplayPlane:UnderRADAR')
		end
		-- TODO - symbols corresponding to ramp, metre mark, manifold nubers
		if (feature.changeTypes) then
			if (feature.changeTypes = 1) then
				featurePortrayal:AddInstructions('PointInstruction:CHNGAC01')		
			elseif (feature.changeTypes = 2) then
				featurePortrayal:AddInstructions('PointInstruction:CHNGDC01')		
			elseif (feature.changeTypes = 3) then
				featurePortrayal:AddInstructions('PointInstruction:CHNGPC01')		
			elseif (feature.changeTypes = 4) then
				featurePortrayal:AddInstructions('PointInstruction:CHNGTC01')		
			elseif (feature.changeTypes = 5) then
				featurePortrayal:AddInstructions('PointInstruction:CHNGCC01')		
			else
				featurePortrayal:AddInstructions('PointInstruction:reference="QUESMRK1"/>')
		else
			featurePortrayal:AddInstructions('PointInstruction:reference="QUESMRK1"/>')
		end	
	else
		error('Invalid primitive type or mariner settings passed to portrayal')
	end

	return viewingGroup
end
