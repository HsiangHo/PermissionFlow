#if os(macOS)
import Foundation
import PermissionFlow

@available(macOS 11.0, *)
public enum PermissionFlowInputMonitoringStatus {
    @MainActor
    public static func register() {
        PermissionStatusRegistry.register(
            provider: InputMonitoringPermissionStatusProvider(),
            for: .inputMonitoring
        )
    }
}
#endif
