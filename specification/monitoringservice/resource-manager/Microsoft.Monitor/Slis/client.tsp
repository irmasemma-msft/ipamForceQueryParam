import "./main.tsp";
import "@azure-tools/typespec-client-generator-core";

using Azure.ClientGenerator.Core;

#suppress "@azure-tools/typespec-azure-resource-manager/missing-operations-endpoint" "Operations API was moved to its own service."
namespace Microsoft.Monitor;

// Exclude SloView and its exclusively-used models from public SDK generation.
// Shared models (EvaluationType, BaselineProperties, Signal, etc.) remain public
// because they are also used by the public Slis interface.
@@exclude(SloView.sliSignalPreview);
@@exclude(SignalPreviewSliProperties);
@@exclude(PreviewType);
@@exclude(KqlmQueryResult);
