//
//  LiquidGlassPreview.swift
//  lara
//
//  Created by lunginspector on 5/13/26.
//

import SwiftUI

struct LiquidGlassPreview: View {
    @Binding var lgDisabled: Bool
    @Binding var lgFallback: Bool

    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 12) {
                Image(systemName: "wrench.and.screwdriver")
                    .foregroundStyle(.white)
                    .frame(width: 45, height: 45)
                    .background(.blue)
                    .clipShape(.rect(cornerRadius: 14))
                VStack(alignment: .leading) {
                    Text("App Notification")
                        .fontWeight(.medium)
                    Text("This is a notification!")
                }
                .font(.system(size: 14))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(14)
            .background(.ultraThinMaterial)
            .clipShape(.rect(cornerRadius: 26))

            HStack {
                Image(systemName: "flashlight.off.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 26, height: 26)
                    .padding()
                    .background(.ultraThinMaterial)
                    .clipShape(.capsule)
                Spacer()
                Image(systemName: "camera.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 26, height: 26)
                    .padding()
                    .background(.ultraThinMaterial)
                    .clipShape(.capsule)
            }
            .padding(.horizontal, 30)

            Capsule()
                .frame(width: 145, height: 4)
        }
        .foregroundStyle(.white)
        .padding(.horizontal)
        .padding(.top)
        .padding(.bottom, 10)
        .background {
            Image("solarium")
                .resizable()
                .scaledToFill()
                .brightness(-0.1)
        }
    }
}

