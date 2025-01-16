//
//  HomeView.swift
//  LMessenger
//
//  Created by 김동현 on 1/14/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel: HomeViewModel
    var body: some View {
        NavigationStack {
            ScrollView {
                profileView
                    .padding(.bottom, 30)
                
                searchButton
                    .padding(.bottom, 24)
                
                HStack {
                    Text("친구")
                        .font(.system(size: 14))
                        .foregroundColor(.bkText)
                    
                    Spacer()
                }
                .padding(.horizontal, 30)
                
                // MARK: - 친구 목록
                if viewModel.users.isEmpty {
                    Spacer(minLength: 80)
                    emptyView
                } else {
                    ForEach(viewModel.users, id: \.id) { user in
                        HStack(spacing: 8) {
                            Image("person")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            Text(user.name)
                                .font(.system(size: 12))
                                .foregroundColor(.bkText)
                            Spacer()
                        }
                        .padding(.horizontal, 30)
                    }
                }
            }
            .toolbar {
                Image("bookmark")
                Image("notifications")
                Image("person_add")
                Button {
                    
                } label: {
                    Image("settings")
                }
            }
        }
        .onAppear {
            viewModel.send(action: .load)
        }
    }
    
    // MARK: - 뷰를 프로퍼티로 만들기
    private var profileView: some View {
        HStack {
            VStack(alignment: .leading, spacing: 7) {
                Text(viewModel.myUser?.name ?? "이름")
                    .font(.system(size: 22, weight: .bold))
                    .foregroundColor(.bkText)
                Text(viewModel.myUser?.description ?? "상태 메시지 입력")
                    .font(.system(size: 12))
                    .foregroundColor(.greyDeep)
            }
            Spacer()
            
            Image("person")
                .resizable()
                .frame(width: 52, height: 52)
                .clipShape(Circle())
        }
        .padding(.horizontal, 30)
    }
    
    // MARK: - 검색 버튼 뷰
    private var searchButton: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(height: 36)
                .background(Color.greyCool)
                .cornerRadius(5)
            
            HStack {
                Text("검색")
                    .font(.system(size: 12))
                    .foregroundColor(.greyLightVer2)
                Spacer()
            }
            .padding(.leading, 22)
        }
        .padding(.horizontal, 30)
    }
    
    // MARK: - emptyView
    private var emptyView: some View {
        VStack {
            VStack(spacing: 3) {
                Text("친구를 추가해보세요.")
                    .foregroundColor(.bkText)
                Text("큐알코드나 검색을 이용해서 친구를 추가해보세요.")
                    .foregroundColor(.bkText)
            }
            .font(.system(size: 14))
            .padding(.bottom, 30)
            
            Button {
                
            } label: {
                Text("친구추가")
                    .font(.system(size: 14))
                    .foregroundColor(.bkText)
                    .padding(.vertical, 9)
                    .padding(.horizontal, 24)
            }
            .overlay {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.greyDeep)
            }
        }
    }
}

#Preview {
    HomeView(viewModel: HomeViewModel(container: DIContainer(services: StubServices()), userId: "user1_id"))
}
 
