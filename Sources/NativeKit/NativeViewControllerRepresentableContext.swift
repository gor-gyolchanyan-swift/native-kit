//
// Introductory information is in the `README.md` file in the root directory of the repository this file is in.
// Licensing information is in the `LICENSE` file in the root directory of the repository this file is in.
//

#if canImport(SwiftUI) && (arch(arm64) || arch(x86_64) || arch(powerpc64) || arch(powerpc64le))
    import SwiftUI

    #if os(macOS) || os(iOS) || os(tvOS)
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, *)
        public struct NativeViewControllerRepresentableContext<ViewType>
        where ViewType: NativeViewControllerRepresentable {

            // MARK: - NativeViewControllerRepresentableContext

            internal typealias AdaptorContext = NativeViewControllerRepresentableAdaptor<ViewType>.Context

            internal init(_ adaptorContext: AdaptorContext) {
                self.adaptorContext = adaptorContext
            }

            internal let adaptorContext: AdaptorContext
        }

        @available(macOS 10.15, iOS 13.0, tvOS 13.0, *)
        extension NativeViewControllerRepresentableContext {

            // MARK: - NativeViewControllerRepresentableContext

            public var coordinator: ViewType.Coordinator {
                adaptorContext.coordinator
            }

            public var transaction: Transaction {
                adaptorContext.transaction
            }

            public var environment: EnvironmentValues {
                adaptorContext.environment
            }
        }
    #endif
#endif
